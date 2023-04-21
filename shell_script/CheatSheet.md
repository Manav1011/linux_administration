# Way to execute a script

1. sh or bash script_name
2. give file executable permission then just type script_name
3. give file executable permission then just type source script_name

## Variables

* Declare: `variable_name=value`
* Access: `$variable_name`
* Example: `name="Manav"`, `echo "Hello, $name!"`

## User Input

* Read input: `read variable_name`
* Example: `read name`, `echo "Hello, $name!"`

## Conditions

##### if statements:

```bash
if [ condition ]; then
    # do something
fi
```

Example:

```bash
if [ $age -lt 18 ]; then
    echo "You are not old enough to vote"
fi
```

##### If-Else Construct:

Syntax:

```bash
if condition; then
    commands
else
    commands
fi
```

Example:

```bash
if [[ $age -ge 18 ]]; then
    echo "You are old enough to vote"
else
    echo "You are not old enough to vote"
fi
```

##### If-else-if ladder

Syntax:

> ```bash
> if condition1; then
>     commands1
> elif condition2; then
>     commands2
> else
>     commands3
> fi
> ```

> ```bash
> if [[ $age -lt 18 ]]; then
>     echo "You are not old enough to vote"
> elif [[ $age -ge 18 && $age -lt 21 ]]; then
>     echo "You can vote, but not drink"
> else
>     echo "You can vote and drink"
> fi
> ```

##### Loops

For loop:

```bash
for variable in value1 value2 value3; do
    # do something
done
```

Example:

```bash
for variable in value1 value2 value3; do
    # do something
done
```

White Loop:

```bash
while [ condition ]; do
    # do something
done
```

Example:

```bash
while [ $count -lt 10 ]; do
    echo "Count: $count"
    count=$((count+1))
done
```

##### Functions:

Declare:	

```bash
function_name() {
    # do something
}
```

Example:

```bash
greet() {
    echo "Hello, $1!"
}
greet "John"

```

#### Input/Output

* Standard output: `echo "message"`
* Standard error: `echo "message" >&2`
* Redirect output: `command > file`
* Redirect input: `command < file`

Example:

```bash
echo "Hello" > greeting.txt
cat greeting.txt
```

#### Pipes and Filters

* Pipe output: `command1 | command2`
* Filter output: `command | grep pattern`

Example

```bash
ls | grep .txt
```

#### Command Line arguments

* Access: `$1`, `$2`, `$3`, etc.
* Example: `echo "Hello, $1!"`

#### Exit Status

* Check status: `$?`

Example:

```bash
command
if [ $? -eq 0 ]; then
    echo "Command succeeded"
else
    echo "Command failed"
fi
```

#### Comments

* Single-line comment: `# comment`
* Multi-line comment:

```bash
: '
comment
comment
comment
'
```

#### Arrays

* Declare: `array_name=(value1 value2 value3)`
* Access: `${array_name[index]}`

```bash
fruits=(apple banana orange)
echo "I like ${fruits[1]}"
```

#### Arithmetic Operators

* Addition: `expr $num1 + $num2`
* Subtraction: `expr $num1 - $num2`
* Multiplication: `expr $num1 \* $num2`
* Division: `expr $num1 / $num2`

Example:

```bash
num1=10
num2=5
sum=`expr $num1 + $num2`
echo "Sum: $sum"
```

#### String operations

* Concatenation: `str1="Hello"; str2="World"; result=$str1$str2`
* Length: `echo ${#str}`
* Substring: `echo ${str:start:length}`

Example:

```bash
str="Hello, World!"
echo ${str:7:5}
```

#### File Operations

* Create file: `touch file.txt`
* Copy file: `cp source_file destination_file`
* Move file: `mv source_file destination_file`
* Delete file: `rm file.txt`

Example:

```bash
cp file.txt backup/
rm file.txt
```

#### Permissions

* Change owner: `chown user_name file`
* Change group: `chgrp group_name file`
* Change mode: `chmod permissions file`

Example:

```bash
chown john file.txt
chmod 644 file.txt
```
