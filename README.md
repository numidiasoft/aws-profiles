# aws-profiles
Allow to switch aws between accounts easily

## Tempaltes
  To define some templates follow steps below
  
  * All templates are stored in the template dir
  * Templates names should be formatted following this pattern <profile_name>-credentials
  To create your template follow the example below
  
  ```
    cp templates/me-credentials.example templates/myprofile-credentials
    # Adapte values inside the file
  ```
  
## Install

  To install aws-profiles

```
➜ aws-profiles  aws:(paris)➜ ./install  
✅  Awsp binary copied to /usr/local/bin/ 
✅  Templates copied to ~/.aws/ 
✅  Setup robbyrussell.zsh-theme zsh them :)
✅  Set the them robbyrussellaws for your zshrc  
✅  Awsp installed succesfully !
```  
  
## Redeploy your templates
  * Add or update and existing template in the temaplate dir
  * execute the install command again
  
## Usage
##### List profiles
```
➜ aws-profiles  aws:(paris)➜ awsp list
paris-credentials	root-credentials
```

#### Switch to another profile

```
➜ aws-profiles  aws:(paris)➜ awsp paris
✅  Checking the the existance of /Users/tarik/.aws/templates/paris-credentials
✅  Swtching to the new profile /Users/tarik/.aws/templates/paris-credentials
✅  Your Aws profile was switched to the paris one
✅  Current profile stored in ~/.aws/.current_aws_profile
✅  Reload zsh
```

#### Disploy the current profile

```
➜ aws-profiles  aws:(paris)➜ awsp current
* paris
```
#### Display help

```
➜ aws-profiles  aws:(paris)➜ awsp help
==> Usage :
==> awsp list # to list all available profiles
==> awsp <profile name> # switch the curent profile into <profile name> 
➜  aws-profiles  aws:(paris)➜ 

```

**NOTE** : If you use ohmyzsh your prompt will be updated with the current aws account

**Example**: aws:(paris)➜  git:(develop) ✗
