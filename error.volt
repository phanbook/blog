<!DOCTYPE html>
<html>
    <head>

    </head>
    <body class="text-center" style="background: #f1f1f1">
        <div class="m-b-md">
        <h3 class="m-b-none">{{ t('Phanbook Errors') }}</h3>
        </div>
        <div class="panel-body">

            <pre>
             .  ____  .    ____________________________
             |/      \|   |                            |
            [| <span style="color: #FF0000;">&hearts;    &hearts;</span> |]  | Phanbook v0.1 |
             |___==___|  /       &copy; phanbook 2015       |
                          |____________________________|

            {{ message }}
            </pre>
        <h3 class="m-b-none">{{link_to('/', t('Go Home'))}}</h3>
        </div>
    </body>
</html>
