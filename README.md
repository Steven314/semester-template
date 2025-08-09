# Semester Template

## Setup

### Use This Template

Follow instruction for using a template from [GitHub](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template).
The process is similar for Gitea.

## Tools

- Neovim - Text editor.
- Obsidian - Digital knowledgebase.
- Typst - Used for writing PDF documents.
- Quarto - Used for computational documents to PDF, HTML, and other formats.
- make - Used for automation.
- zoxide - A better `cd` command.
- taskwarrior - A CLI tool to manage your to-do list.
- Gitea/GitHub - Version control.

### make

There is a `Makefile` here which allows you to create homework or projects based on a template.

To put a new Typst homework assignment in the homework directory:

```cmd
make homework name=homework1
```

To put a new Quarto project in the projects directory:

```cmd
make project name=project1 type=qmd
```

You can also remove a directory:

```cmd
make clean dir=homework/homework1
```

Notice that you have to specify the relative path of the folder.
This was done partly to make it hard to screw up.
It will also ask for Y/N confirmation.

### taskwarrior

- [Documentation](https://taskwarrior.org)
- Add a task with `task add Do Something`.
- View the open tasks with `task`.
- Mark a task complete with `task 2 done`, where `2` is the ID from the table given by `task`.

### Gitea/GitHub

I've set up `make save` which will add all, commit, and push with a basic commit message of the date and time.

Otherwise,

1. `git add -A`
2. `git commit -m "commit message"`
3. `git push`

