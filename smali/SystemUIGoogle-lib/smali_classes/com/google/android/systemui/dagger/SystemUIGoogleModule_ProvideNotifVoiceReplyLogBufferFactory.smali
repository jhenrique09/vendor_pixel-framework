.class public abstract Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideNotifVoiceReplyLogBufferFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideNotifVoiceReplyLogBuffer(Lcom/android/systemui/log/LogBufferFactory;)Lcom/android/systemui/log/LogBuffer;
    .locals 3

    const/16 v0, 0x1f4

    const-string v1, "NotifVoiceReplyLog"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/log/LogBufferFactory;->create(ILjava/lang/String;Z)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    return-object p0
.end method
