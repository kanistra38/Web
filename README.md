<h1><a id="Install_Laravel_0"></a>Install Laravel</h1>
<p>First, I downloaded the Laravel installer with Composer:</p>
<pre><code class="language-sh">composer global require <span class="hljs-string">"laravel/installer"</span>
</code></pre>
<p>Then I created the project with composer:</p>
<pre><code class="language-sh">composer create-project --prefer-dist laravel/laravel web
</code></pre>
<h1><a id="Setting_11"></a>Setting</h1>
<p>After installation, Laravel pointed to the public directory as the root directory of the web server.<br>
Then I created an encryption key:</p>
<pre><code class="language-sh">php artisan key:generate
</code></pre>
<p>And configured the .env file</p>
