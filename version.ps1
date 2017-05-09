$build= [int32](((get-date).Year-2000)*366)+(Get-Date).DayOfYear
$Major_Revision = $env:majorrev
$Minor_Revision = $env:minorrev
$Build_Id = $env:BUILD_NUMBER
$VersionNumber1 = $Major_Revision + '.' + $Minor_Revision + '.' + $build + '.' + $Build_Id
cd %branchname%
mvn -e versions:set -DnewVersion="$VersionNumber1"
mvn $env:goal
