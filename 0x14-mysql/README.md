<div class="gap formatted-content">
    <p>&nbsp;⚠️ <strong> HEY! Before going through the guide try this command if it gonna install MySQL 5.7 correctly, when you see the white windows you can jump to step 9, and see what to choose :</strong> </p>

<pre><code> sudo wget -O mysql57 https://raw.githubusercontent.com/nuuxcode/alx-system_engineering-devops/master/scripts/mysql57 &amp;&amp; sudo chmod +x mysql57 &amp;&amp;  sudo ./mysql57
</code></pre>

<p>If this command did not install 5.7 correctly you can continue reading the following guide.</p>

<p><strong>NOTE  AS YOU PROCEED: 
At any point in this guide, don’t go to the next step if you have errors in the current step you are in, make sure there are no errors.</strong></p>

<p>You can also use this guide for more visual and sample outputs : </p>

<h5><a href="/rltoken/7Vopd7lb8_-GwkYXAzmWpg" title="For a comprehensive Guide Click Here 📄 " target="_blank">For a comprehensive Guide Click Here 📄 </a></h5>

<h3>STEPS :</h3>

<ol>
<li><p><strong>Clean Running MySQL Processes :</strong></p>

<ul>
<li>Check for any running MYSQL Processes:
<strong><code>sudo ps aux | grep mysql</code></strong></li>
<li>If MySQL is running,try stopping it :
<strong><code>sudo service mysql stop</code></strong></li>
<li>Double-check if MySQL is no longer running:
<strong><code>sudo ps aux | grep mysql</code></strong></li>
<li>If MySQL processes are still running, terminate them, remember to replace PID with the value of your PID : 
<strong><code>sudo kill -9 &lt;PID&gt;</code></strong><br></li>
</ul></li>
<li><p><strong>Remove Existing MySQL Versions:</strong></p>

<ul>
<li> Remove MySQL packages 
<strong><code>sudo apt-get remove --purge mysql-server mysql-client mysql-common -y &amp;&amp; sudo apt-get autoremove -y</code></strong><br></li>
<li> If no errors occurs, proceed to next steps </li>
<li> If prompted by a dialog to remove data directories, please select <code>YES</code> and press Enter.</li>
</ul></li>
<li><p><strong>Remove MySQL Apt Configurations :</strong></p>

<ul>
<li> Running the following ::: </li>
<li> <strong><code>sudo rm -rf /etc/apt/sources.list.d/mysql.list*</code></strong></li>
<li> <strong><code>sudo rm -rf /var/lib/mysql-apt-config</code></strong></li>
<li> <strong><code>sudo dpkg --purge mysql-apt-config</code></strong></li>
</ul></li>
<li><p><strong>Double Check and Remove Configuration File</strong></p>

<ul>
<li> Check by running : <strong><code>dpkg -l | grep mysql</code></strong></li>
<li> The result from above should be none, on your terminal</li>
<li> Now, Remove configurations files  by : <strong><code>sudo rm -rf /etc/mysql /var/lib/mysql</code></strong></li>
</ul></li>
<li><p><strong>Edit sources.list to Remove MySQL Repositories :</strong></p>

<ul>
<li> Check the sources.list file for <code>MySQL</code> repository entries (example: deb http://repo.mysql.com/apt/ubuntu bionic main), 
there should be none like the picture below:</li>
</ul></li>
<li><p><strong>Update the packages :</strong></p>

<ul>
<li>  Check the sources.list file for <code>MySQL</code> repository entries (example: deb http://repo.mysql.com/apt/ubuntu bionic main),</li>
<li>  Run :  <strong><code>cat /etc/apt/sources.list | grep mysql</code></strong></li>
<li>   there should be none like the picture below:</li>
<li>   If there are entries, open the sources.list file: <strong><code>sudo vi /etc/apt/sources.list</code></strong></li>
<li>   If no errors occur, proceed to the next step.</li>
<li>   Update the package by running :** <code>sudo apt update</code>**</li>
<li>   Kill any running processses 
<code>ps aux | grep apt</code></li>
</ul></li>
<li><p><strong>Clean APT Cache :</strong></p>

<ul>
<li>   Run : 
<strong><code>sudo apt clean</code></strong></li>
</ul></li>
<li><p><strong>Configure any Pending Packages and Install MySQL :</strong></p>

<ul>
<li>   Run :<br>
<code>sudo dpkg --configure -a</code></li>
<li>   Install MySQL by running : 
**  <code>sudo wget -O mysql57 https://raw.githubusercontent.com/nuuxcode/alx-system_engineering-devops/master/scripts/mysql57 &amp;&amp; sudo chmod +x mysql57 &amp;&amp;  sudo ./mysql57</code>**</li>
<li>   A few windows are going to show up, Follow the prompts to select Ubuntu Bionic, change to MySQL 5.7 and set a password if needed.<br></li>
<li>   After installation, check MySQL status:
<strong><code>sudo service mysql status</code></strong>
*</li>
</ul></li>
</ol>

<h4>If issues persist, use the following commands to debug :</h4>

<ul>
<li><strong><code>journalctl -u mysql.service</code></strong></li>
<li><strong><code>cat /var/log/mysql/error.log</code></strong></li>
<li><strong><code>journalctl -xe</code></strong></li>
</ul>

<h4>Check this post o learn more about MySQL</h4>

<p><strong><code>https://shazaali.substack.com/p/database-administration</code></strong></p>

</div>
