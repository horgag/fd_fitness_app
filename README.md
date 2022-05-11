# FD-Way app

This project can be used as sample for other projects. You can always take a look into the practicies and code styles that are used here.

## Getting Started

All generated files should be added to .gitignore thus after clonning the repo or after pulling changes run the following command:

`flutter pub run build_runner build --delete-conflicting-outputs`

In case if you have [derry](https://pub.dev/packages/derry) preinstalled on your machine it is possible to use

`derry generator` - that is a shorthand of command above

## Common Rules

Project code style:

1. Global requirements
   1. Add `analysis_options.yaml` to your project at the start
   2. Put `pre-push` script under `.git/hooks` folder or configure Github Actions that will run flutter analyse every time PR is created or
      both
2. Git requirements:

   1. Follow Git flow
   2. At the start create `develop` branch from `master`
   3. From develop branch out feature branches.
   4. Naming convention: `<type>/<category>/<name>-<more name>`. Type can be: `feature/update/fix`. Category represents the whole scope
      where feature may be
   5. Name should contain less than 5 words

   Correct: feature/profile_screen/upload-user-photo Wrong: feature/upload-user-photo-on-profile-screen-using-firebase

3. Project structure:
   1. Top level directories:
      - data
      - domain
      - di
      - presentation
      - utils
   2. Patterns:
      1. Repository for storing data, Bloc for presentation
      2. For DI purposes use GetIt

4. Widget structure requirements
  1. todo Explain presentation layer

4.  Class requirements
    1. Use const constructors as much as possible. It improves app's performance
    2. If there are lots of fields that share the same type then separate them by coma: `final String id, name, surname, address;`
    3. Sort the order of fields, getter, setters and methods
    4. Put `overridden` methods at top, methods that returns `Widget` after them and functional methods below.

## Examples
### Widget's State

```
class _ProfileState extends State<ProfileComponent> {

    late final AnimationController _controller ... ;
    bool _isButtonEnabled;

    MyBloc get _bloc => context.read<MyBloc>();

    …
    @override
    void initState(){
    ….
    }

    @override
    Widget build(…){
    ….
    }

    Widget _content(){…}
    Widget _button(){…}

    String _dynamicButtonTitle(){…}
    void _dynamicButtonTitle(){…}
}
```


### Bean class

```
class User {
    const User(...);
    
    User.copyWith(...) : name = ...;

    final String name, surname, username;
    final Measures measures;

    @override
    String toString() => 'User';
}

class Measures {
    Measures(...);
    // Kg, cm, cm
    double weight, height, width;
    
    bool get isTall => measures.height > 200;

    set weight(String num) => weight = num.tryParse()!;
}
```
#CD Github Actions

##iOS

The iOS setup for CI/CD is quite a bit more complicated than Android.

The first step is to gather the certificates and provisioning profiles that we need. This can be done in the [developer account](https://developer.apple.com/account/) section of the Apple website.

We need an iOS Distribution Certification and an App Store Distribution Provisioning Profile.

### iOS Distribution Certificate

Go to Certificates, Identifiers & Profiles in your Apple Developer account for the app you are setting up.

Under Certificates press the + button, select the iOS Distribution (App Store & Ad Hoc) radio button, press Continue.

Now you will need to upload a CSR (Certificate Signing Request). To get one of these, first open Keychain Access on your Mac. Then go to the Keychain Access dropdown in the top left -> Certificate Assistant -> Request a Certificate from a Certificate Authority.

A window will pop up, you need to enter your email in the top field but not the bottom even though it says it's required. Then select Saved to disk and Let me specify key pair information.

Now when you press Next you can save this CSR to your Mac, after saving, for Key Size select 2048 and Algorithm select RSA and press Continue. You should now have the CSR.

Now you can upload this CSR, press next and download your Certificate.

### iOS P12

To use this certificate in CI/CD we need a .p12 file. To get this first open the Certificate you just created. This should open Keychain Access and you should see the certificate you just created.

In the Category selection on the bottom right of the Keychain Access window, select Certificates. You should now see a small dropdown arrow next to the certificate you created. Under this dropdown you will see a private key item. Right click this and export it as a .p12. Make note of the password you use if you choose to use one.

Now we have successfully created the .p12 file.

### iOS Provisioning Profile

Now we need to create an App Store Distribution Provisioning Profile. To do this go back to Certificates, Identifies & Profiles in your Apple Developer account.

Select Profiles from the side menu, and click the + button. Select the App Store radio button underneath the Distribution subheading. Press Continue, select the app that you want to create the provisioning profile for and press Continue again.

Now you will be asked which certificates you want to include in this provisioning profile. Select the certificate you just created in the previous step. Press Continue and give the Provisioning Profile a name. Click Generate and then download the Profile.

Now we have both the .p12 file and the .mobileprovision file that we need to set up the CD.

### Github Secrets

We will need to setup a few secrets for the CD.

To setup secrets, go to the repo that you are working with, then to Settings, then to Secrets in the side menu, you should be able to add secrets from there.

The secrets we need are:

1. P12_BASE64

   To generate the Base64 encoded string for the .p12 file, simply run this command: `openssl base64 -in ${PATH_TO_P12_FILE}`. You can then copy the console output to the secret and save it.

2. PROVISIONING_BASE64

   The is the same process as above, but just specifiy the path to your provisioning profile instead of your p12 file

3. CODE_SIGNING_IDENTITY

   To get your code signing identity you can run this command `security find-identity -v -p codesigning`. You will get a list of all the codesigning identities on your Mac, you want the long alphanumeric string of the iPhone distribution certificate you created previously.

4. TEAM_ID

   The team id you need will be printed in the above command too, it's the 10 character alphanumeric string in brackets.

5. CERTIFICATE_PASSWORD

   This is the password you chose when you exported the .p12 file.

6. APPLE_EMAIL

   This is your Apple email for logging into your apple account

7. APPLE_PASSWORD

   You can either use your Apple password, or generate a one time password. To generate a one time password go to [this link](https://appleid.apple.com/account/manage), sign in and under the Security subheading you will be able to generate an App-Specific Password.

### Fastfile

You will also need to setup Fastlane which you can do by going into the ios subdirectory of this project and running `fastlane init`

### Final Steps

You should now be able to copy and paste the code from the ios-release.yml, the copy_certs.sh and the Fastfile from the ios subdirectory to get the CD running.

The places you will need to change the code are mostly obvious. The only place it's not obvious is when you're specifying the provisioning profiles in the `gym` command in the Fastfile.

The name of the provisioning profile is the name you gave to it when you created it in the Apple Developer section, not the name of the file.
