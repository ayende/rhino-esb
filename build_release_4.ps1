import-module .\psake.psm1
invoke-psake -framework '4.0' .\default.ps1 -properties @{config='Release';target_framework_version='4.0'}
$base_dir = resolve-path .
invoke-psake -framework '4.0' .\default.ps1 -properties @{config='Release';platform='x86';target_framework_version='4.0';build_dir="$base_dir\build\x86";buildartifacts_dir="$base_dir\build\x86\";release_dir="$base_dir\Release\x86\"}
invoke-psake -framework '4.0' .\default.ps1 -properties @{config='Release';platform='x64';target_framework_version='4.0';build_dir="$base_dir\build\x64";buildartifacts_dir="$base_dir\build\x64\";release_dir="$base_dir\Release\x64\"}
remove-module psake