# in your custom resources function
defmodule TodoApp.Kaffy.Config do
  def create_resources(_conn) do
    [
      blog: [
        name: "My Blog", # a custom name for this context/section.
        resources: [ # this line used to be "schemas" in pre v0.9
          task: [schema: TodoApp.Todo.Task]
        ]
      ],
    ]
  end
end
