from frictionless import Package, Pipeline, steps

url = 'https://raw.githubusercontent.com/fjuniorr/datapackage-reprex/transform-txt/datapackage.json'
package = Package(url)

pipeline = Pipeline(
    steps=[
        steps.resource_update(name="indicadores_planejamento", descriptor={"title": "New title"}),
    ],
)

target = package.transform(pipeline)
target.get_resource('indicadores_planejamento').title
