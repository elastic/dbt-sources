import os

from flask_appbuilder.security.manager import AUTH_OID, AUTH_REMOTE_USER, AUTH_DB, AUTH_LDAP, AUTH_OAUTH

ROW_LIMIT = 5000
SECRET_KEY = os.getenv("SECRET_KEY")
SQLALCHEMY_DATABASE_URI = os.getenv("CONNECTION_STRING")
CSRF_ENABLED = True
WTF_CSRF_ENABLED = True
ENABLE_PROXY_FIX=True
# SUPERSET_WEBSERVER_PORT = 8088
# MAPBOX_API_KEY = os.getenv("MAPBOX_API_KEY", "")

AUTH_TYPE = AUTH_OAUTH
OAUTH_PROVIDERS = [
    {
        "name": "google",
        "whitelist": ["@elastic.co"],
        "icon": "fa-google",
        "token_key": "access_token",
        "remote_app": {
            "base_url": "https://www.googleapis.com/oauth2/v2/",
            "request_token_params": {
                "scope": "email profile"
            },
            "request_token_url": None,
            "api_base_url": "https://www.googleapis.com/oauth2/v2/",
            "access_token_url": "https://accounts.google.com/o/oauth2/token",
            "authorize_url": "https://accounts.google.com/o/oauth2/auth",
            "consumer_key": os.getenv("GOOGLE_ID"),
            "consumer_secret": os.getenv("GOOGLE_SECRET")
        }
    }
]

# Will allow user self registration, allowing to create Flask users from Authorized User
AUTH_USER_REGISTRATION = True

# The default user self registration role
AUTH_USER_REGISTRATION_ROLE = "Admin"


FEATURE_FLAGS = {
    "DASHBOARD_NATIVE_FILTERS": True,
}
