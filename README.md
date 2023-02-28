# Joint-Code-Quality-Check

A code evaluation tool that integrates multiple existing code quality inspection tools.

## Goals

1.   Evaluation of code quality
2.   Optional evaluation content
3.   (Visualization) Simple operation
4.   extensibility

## Plan

#### 1. Implement integration of existing tools

| Completed          | Name       | Description                                                  | Original                                               |
| ------------------ | ---------- | ------------------------------------------------------------ | ------------------------------------------------------ |
| :white_check_mark: | CheckStyle | A tool for checking Java source code for adherence to a Code Standard or set of validation rules (best practices). | [checkstyle](https://github.com/checkstyle/checkstyle) |
|                    | PMD        |                                                              |                                                        |
|                    | Jacoco     |                                                              |                                                        |
|                    | Findbugs   |                                                              |                                                        |
|                    | ...        |                                                              |                                                        |

#### 2. Operation interface optimization

TODO