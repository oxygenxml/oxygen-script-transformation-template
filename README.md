# Oxygen Script - Transformation Template
This project provides you with a template of Oxygen Scripting Transformation tool, 
by allowing to transform the files from your GitHub repository. The Transformation
Script starts whenever a commit is pushed to your repo, and generates a transformation
result that is available on GitHub Pages platform.

To get things ready, follow these steps:
1. Create a new GitHub project using this template. This allows you to easily create a new repository without copying and pasting the content, and with no history or reference to this repository.
   All you have to do is click the <kbd>Use this template</kbd> button. Make sure to check <i>Include all branches</i> option.
2. Get an Oxygen Scripting license key from https://www.oxygenxml.com/xml_scripting/pricing.html (you can also request a [trial](https://www.oxygenxml.com/xml_scripting/register.html)). Add it as a secret to your repository (Settings -> Secrets -> Actions->New repository secret), and name it "SCRIPTING_LICENSE_KEY". 
3. Go to <i>build/gradle.properties</i> file and replace "oxygenxml" with your GitHub {userid}.

Now, as the setup should be ready, you can simply add your files inside the <i>transform</i> directory and push them into your repository.
This will trigger the transformation process. By default transformation is performed on the  "dita-gear-pump/gear-pump.ditamap" file. You can change the default from the transformWorkflow.yml  file. Feel free to use or remove the sample files provided with this template.

If you want to transform other files from a specific directory, you can run the process also manually by following these steps:
- In your GitHub repository, click on <b>Actions</b> tab.
- Select <b>Run Transformation Script</b> from the left panel.
- Click the <kbd>Run workflow</kbd> button in the right side.
- Type the file path to transform and the scenario to be applied and click <b>Run workflow</b>.

The transformation result generated using Oxygen Scripting should be available here:
https://{userid}.github.io/{reponame}/

The transformation result generated from oxygenxml repository is available here::
https://oxygenxml.github.io/oxygen-sample-transformation-script/dita-gear-pump
