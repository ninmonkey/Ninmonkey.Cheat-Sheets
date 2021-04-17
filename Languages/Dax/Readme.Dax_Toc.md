- [Docs](#docs)
  - [What's New](#whats-new)
- [Basics](#basics)
  - [Grammar / Syntax](#grammar--syntax)
    - [Grammar](#grammar)
  - [Statements / Keywords](#statements--keywords)
  - [Operators](#operators)
  - [Data types](#data-types)
    - [Comparison of DAX and SQL](#comparison-of-dax-and-sql)
    - [Special Notes](#special-notes)
- [Function Summary](#function-summary)
  - [Tables](#tables)
  - [todo](#todo)

# Docs
- [Dax.guide: TOC by types](https://dax.guide/)
- [msdocs: Dax](https://docs.microsoft.com/en-us/dax/)
- [msdocs: DAX GLossary](https://docs.microsoft.com/en-us/dax/dax-glossary)

## What's New

- [msdocs: DAX Functions added in 2021+](https://docs.microsoft.com/en-us/dax/new-dax-functions)
- [dax.guide/changelog](https://dax.guide/changelog/) ( is currently missing 2021 )

# Basics

- [msdocs: DAX Syntax and Special Characters](https://docs.microsoft.com/en-us/dax/dax-syntax-reference#special-characters)
- [msdocs: Great Overview of the DAX Language](https://docs.microsoft.com/en-us/dax/dax-overview)

## Grammar / Syntax

- [msdocs:/dax/dax-queries](https://docs.microsoft.com/en-us/dax/dax-queries)
- [msdocs: DAX Syntax Reference](https://docs.microsoft.com/en-us/dax/dax-syntax-reference)

### Grammar

**Expression**
```dax
[DEFINE {  MEASURE <tableName>[<name>] = <expression> }
        {  VAR <name> = <expression>}]
EVALUATE <table>
[ORDER BY {<expression> [{ASC | DESC}]}[, …]
[START AT {<value>|<parameter>} [, …]]]
```

**EVALUATE**
```dax
EVALUATE <table>
```

**ORDER BY**
```dax
EVALUATE <table>
[ORDER BY {<expression> [{ASC | DESC}]}[, …]
```

**START AT**
```dax
EVALUATE <table>
[ORDER BY {<expression> [{ASC | DESC}]}[, …]
[START AT {<value>|<parameter>} [, …]]]
```

**DEFINE**
```dax
[DEFINE {  MEASURE <tableName>[<name>] = <expression> }
        {  VAR <name> = <expression>}]
EVALUATE <table>
```


## Statements / Keywords

- <https://dax.guide/statements/>
- <https://docs.microsoft.com/en-us/dax/statements-dax>
- `COLUMN`, `DEFINE`, `EVALUATE`, `MEASURE`, `ORDER BY`, `RETURN`, `TABLE`, `VAR`

## Operators
- <https://dax.guide/operators/>
- <https://docs.microsoft.com/en-us/dax/dax-operator-reference> ( contains a lot more information )
- [msdocs: AnalysisServices: Tabular Model : Data Types](https://docs.microsoft.com/en-us/analysis-services/tabular-models/data-types-supported-ssas-tabular?view=asallproducts-allversions)

## Data types

- <https://dax.guide/datatypes/>
- Boolean, Binary, Currency, DateTime, Decimal, Integer, String, Variant

### Comparison of DAX and SQL

see also: [msdocs: AnalysisServices: Tabular Model : Data Types](https://docs.microsoft.com/en-us/analysis-services/tabular-models/data-types-supported-ssas-tabular?view=asallproducts-allversions)
| DAX                                                                                   | T-SQL                   | SQL     |
| ------------------------------------------------------------------------------------- | ----------------------- | ------- |
| `Boolean`                                                                             |                         |         |
| `Binary`                                                                              |                         |         |
| [`Currency`](https://dax.guide/dt/currency/)<br/>`Fixed Decimal Number` in `Power BI` |                         |         |
| [`DateTime`](https://dax.guide/dt/datetime/)                                          |                         |         |
| `Decimal`<br/>double-precision floating point                                         | `decimal` and `numeric` | `float` |
| `Integer`<br/>always `64-bit int`                                                     |                         |         |
| `String`<br/>`Unicode` encoded using `utf-16le`                                       |                         |         |
| `Variant`                                                                             |                         |         |

### Special Notes

`Currency`
- It can represent **four decimal points**
- is *internally* stored as a `64-bit integer` value divided by 10,000.
- **Summing or subtracting** `Currency` data types _always ignores decimals beyond the fourth decimal point_
- **multiplication and division** produce a `floating-point` value – _thus increasing the precision of the result_
- In general, if one needs more accuracy than the four digits provided, they need to use a `Decimal` data type.

`DateTime`
- DAX stores dates as a `DateTime` data type
- This format uses a `floating-point` number *internally*
  - wherein the integer corresponds to the number of days since `December 30, 1899`
  - and the `decimal` part identifies the _fraction of the day_
  - Hours, minutes, and seconds are converted to` decimal fractions` of a **day**
- `Power BI` **adds two types** `date` and `time`
- _Internally_, they are a simple variation of `DateTime`
  - Date and Time only store the integer or the decimal part of the DateTime, respectively.
  -
- The **first date officially supported** by DAX is `March 1, 1900`
  - Date calculations executed _on time periods prior_ to that date **might lead to errors** and should be _considered as inaccurate_

```dax
= TODAY ()  + 1
// returns next day
// actually it's current datetime plus 24hours
```

`Integer`
- always uses `64-bit int`

`String`
- Dax.guide says it's `16-bits` per `character`
- It's vague. **Since it's using dotnet I'm assuming it's `utf-16LE` encoded text**
  - that would mean a `code-unit` is `16-bits`, **not** `16-bit` per `character` (aka `codepoint`)
  - that means any code-point is encoded as either `2` or `4` `bytes`
  - by comparison, `utf-8` has a `code-unit` size of `1 byte`, and `code-point` size of `1` to `4` `bytes`
- By default is `case-insensitive` ( see: sql collation )
-

# Function Summary

## Tables


[`Value`](https://dax.guide/value/) [Dax.Do](https://dax.do/zhuGP7gL860S5F/)
- Coerce `text` to `number`
- param passed as the `text` parameter can be in
  - any of the constant, number, date, or time formats recognized by DAX
- If `text` is not in one of these formats, an `error` is returned.
- VALUE is not common because DAX implicitly converts text to numbers as necessary.


[`Values`](https://dax.guide/values/) [Dax.do](https://dax.do/DCRyaHw9rK1My1/)
- if param is `Column` then return a `distinct` single column table
- if param is `Table` then return **all** columns and rows, including duplicates
  - (with the additional blank row if present)


## todo

- int, trunc