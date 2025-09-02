GitHub Actions Core Components: Workflow, Jobs and Steps
Workflow (GitHub Actions):
A workflow is an automated process defined in a YAML file that runs one or more jobs. These jobs consist of series of individual steps (commands or actions) that perform specific tasks—such as building code, running tests, or deploying applications on a runner. To uniquely Identify workflows, each can also have an optional name.This name will be visible in the actions tab of the Github Repo.

A runner is nothing but a virtual machine which is responsible for executing your workflows upon triggering.First the runners will clone repo locally on the VM then proceed to execute the command what mentioned in the steps.So during or after the job excution you can access the logs outputs and artifacts for each step via Github UI.

Runners Types: Github Hosted (Provides a clean VM for every job execution and can't customize beyond selection of runner types), Self-Hosted(can run multiple jobs on the same machine and you have complete control so you can install any required softwares). We use runs-on attribute to specify the runner configurations.

    Location: Workflows are stored in the .github/workflows/ directory of your repository.

    Multiple Workflows: A single repository can have multiple workflow files, each handling different automation needs (e.g., testing, deployment, CI/CD pipelines).

    Triggers: Workflows are triggered by events in your repository. Common events include:

        push: When code is pushed to a branch.

        pull_request: When a pull request is opened or updated.

        schedule: At specific time intervals (cron jobs).

        workflow_dispatch: Manual triggers.

        issue, release, etc.: Many GitHub events can be used to trigger workflows.
Jobs: 
    Jobs are the building blocks of a workflow.

    Each job runs in its own runner (a virtual machine or container provided by GitHub or self-hosted).

    Jobs can run in parallel by default, or sequentially if you define dependencies using the needs keyword.

    Each job is made up of steps that execute in order.
Steps: 
    Steps are the individual tasks that are executed as part of a job.

    Steps run sequentially within a job.

    A step can includes:  A shell command using run keyword to executes the commands or A reusable action using uses.

Actions:

    Actions are reusable, pre-built automation components designed to perform specific tasks within a workflow.

    You include an action in a step using the uses keyword.

    Actions help reduce duplication by encapsulating logic for tasks like:

        Checking out code

        Setting up environments

        Uploading artifacts

        Running linters or tests

    Types of Actions:

        Official actions: Maintained by GitHub (e.g., actions/checkout, actions/setup-node, build and push docker images,create aks cluster, consume valut secrets)

        Community actions: Created and shared by other GitHub users

        Custom actions: You can create your own for personal or team use