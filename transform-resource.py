from frictionless import Resource, Pipeline, steps

url = 'https://raw.githubusercontent.com/fjuniorr/datapackage-reprex/transform-txt/resource.json'
resource = Resource(url)

pipeline = Pipeline(
    steps=[
        steps.resource_update(name="indicadores_planejamento", descriptor={"title": "New title"}),
    ],
)

target = resource.transform(pipeline)
target.title
