.class interface abstract Lcom/nuance/connect/comm/ConnectorCallback;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getDefaultDelay()I
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getRequestKey()Ljava/lang/String;
.end method

.method public abstract getSessionId()Ljava/lang/String;
.end method

.method public abstract onAccountInvalidated()V
.end method

.method public abstract onCancel(Lcom/nuance/connect/comm/Command;)V
.end method

.method public abstract onDeviceInvalidated()V
.end method

.method public abstract onDownloadStatus(Lcom/nuance/connect/comm/Command;II)V
.end method

.method public abstract onFailure(Lcom/nuance/connect/comm/Command;ILjava/lang/String;)V
.end method

.method public abstract onIOException(Lcom/nuance/connect/comm/Command;ILjava/lang/String;)V
.end method

.method public abstract onResponse(Lcom/nuance/connect/comm/Response;)V
.end method

.method public abstract onRetry(Lcom/nuance/connect/comm/Command;IILjava/lang/String;)Z
.end method

.method public abstract onSessionInvalidated()V
.end method

.method public abstract onSuccess(Lcom/nuance/connect/comm/Command;)V
.end method

.method public abstract onUnlicensed(I)V
.end method

.method public abstract onValidateDeviceProperties(Lcom/nuance/connect/comm/Response;)V
.end method
