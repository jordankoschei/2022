---
nav: work
title: Okta
layout: page
---

<div class="infobox">
    <p>I was a Design Manager and then a Principal Product Designer at Okta, where I designed components, shipped production code, and developed processes and tools used across the company.</p>
    <p>I can talk about this portion of my work at Okta because Odyssey is open-source. You can see the code on <a href="https://github.com/okta/odyssey">GitHub</a> and live examples on <a href="https://odyssey-storybook.okta.design/">Storybook</a>.</p>
    <p>For a more visual-centric look at my work, see my <a href="{% link work/connecthv.md %}">ConnectHV case study</a>.</p>
</div>

I joined Okta as a design manager following the acquisition of my previous company, <a href="{% link work/spoke.md %}">Spoke</a>, in 2021.

<form
  action="#"
  method="GET"
  class="container contact"
  id="login-form"
>
    <div class="field half">
        <label for="message">Password</label>
        <input type="password" id="password" autofocus placeholder="Enter password" />
    </div>

<button type="submit" class="button" onclick="checkPassword()">Send</button>

</form>

<div id="protected">
</div>

<script>
    function checkPassword() {
        const password = document.getElementById('password').value;
        if (password === atob('S29zY2hlaTE3MDEk')) {
            document.getElementById('protected').style.display = 'block';
            document.getElementById('login-form').style.display = 'none';
            fetch('{% link assets/data/okta.html %}')
                .then(response => response.text())
                .then(data => {
                    document.getElementById('protected').outerHTML = data;
                })
                .catch(error => console.error('Error fetching content:', error));
        }
    }
</script>
