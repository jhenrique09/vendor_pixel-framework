.class public abstract Lcom/google/android/systemui/columbus/legacy/ColumbusModule_ProvideInputMonitorFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideInputMonitor()Lcom/android/systemui/shared/system/InputMonitorCompat;
    .locals 3

    new-instance v0, Lcom/android/systemui/shared/system/InputMonitorCompat;

    const-string v1, "Quick Tap"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/shared/system/InputMonitorCompat;-><init>(ILjava/lang/String;)V

    return-object v0
.end method
