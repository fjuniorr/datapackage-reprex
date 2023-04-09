from frictionless import Package

package = Package('sqlite:///database.db')
package.to_yaml('datapackage.yaml')
