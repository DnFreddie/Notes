## Functions 
| Task                                                       | Code                                                                                                                             |
| ---------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------- |
| Read file                                                  | `pd.read_csv(path)`                                                                                                              |
| Set maximum rows displayed in the terminal                 | `pd.options.display.max_rows = number`                                                                                           |
| Recognize headers                                          | `print(df.columns)`                                                                                                              |
| Display particular headers                                 | `print(df[['Categories']])`                                                                                                      |
| Sort values alphabetically                                 | `df.sort_values(['Search Volume'], ascending=True).head(100)`<br>Use `ascending=False` for descending values                     |
| Values in particular condition                             | `print(df.loc[(df['Intents'] == 't')                                                                                             |
| Drop column                                                | `df.drop(df.columns[[1, 2, 3, 4]], axis=1)`                                                                                      |
| Insert a new column                                        | `df['new category'] = df.iloc[:, range].sum(axis=1)`                                                                             |
| Rearrange headers                                          | `list(df.columns.values)`                                                                                                        |
| Save as CSV                                                | `df.to_csv('path', index=False)`<br>Use `sep` parameter for a different separator                                                |
| Save as XLS                                                | `df.to_excel('path', index=False)`                                                                                               |
| Mean                                                       | `df['category'].mean()`                                                                                                          |
| Trimmed mean                                               | `trim_mean(df['category'], drop_percentage)`<br>Drop percentage of values from top and bottom                                    |
| Median                                                     | `df['category'].median()`                                                                                                        |
| Standard deviation                                         | `df['category'].std()`                                                                                                           |
| Check duplicated values                                    | `df.loc[df.duplicated()]`<br>Use `subset=[name_of_the_column]` to check a specific column                                        |
| Duplicated values                                          | `df.duplicated()`<br>The output is a boolean Series. Use `df.duplicated(subset=[name_of_the_column])` to check a specific column |
| Count of NaN values                                        | `df.isna().sum()`                                                                                                                |
| Rename columns                                             | `df.rename(columns={'previous_column': 'new_column'})`                                                                           |
| Count of each unique value in a column                     | `df['MAIN_GENRE'].value_counts()`                                                                                                |
| Concatenate two data frames (append)                       | `pd.concat([df, df_to_append])`                                                                                                  |
| Convert to numeric (float or int)                          | `pd.to_numeric(df['numeric category'])`                                                                                          |
| Convert to datetime format                                 | `pd.to_datetime(df['publishTime'])`                                                                                              |
| Casting data types                                         | `df['column'].astype('data_type')`                                                                                               |
| Filter out rows with no values                             | `df.loc[~df['likeCount'].isna()]`                                                                                                |
| Check for NaN values                                       | `df.isna()`<br>It returns a boolean DataFrame. Use `~` before the expression to get the positive values                          |
| Subset rows based on condition                             | `df.loc[df['RELEASE_YEAR'] > 1999]`<br>You can also use the `query` method                                                       |
| Subset columns                                             | `df[['column1', 'column2']]`                                                                                                     |
| Shape of the DataFrame                                     | `df.shape`                                                                                                                       |
| Basic information                                          | `df.describe()`                                                                                                                  |
| Set the index                                              | `df.set_index('column_name')`                                                                                                    |
| Locate based on index                                      | `df.loc[index_value]`                                                                                                            |
| Data types                                                 | `df.dtypes`<br>Remember not to use parentheses                                                                                   |
| *Get the only the values of the column in a list of lisit* |  **df[''['Title ']].values.tolist()**                                                                                                                                |

--- 


>[!quote] [regex](/obisdian_ntoes/notes_obsidian/ZPythonref/regex.md) [data_py](/obisdian_ntoes/notes_obsidian/ZPythonref/data_py.md) [firebase](/databases/firebase.md)