.class public abstract Lcom/google/android/systemui/columbus/dagger/ColumbusModule_ProvideQuickTapWakeLockFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideQuickTapWakeLock(Landroid/content/Context;Lcom/android/systemui/util/wakelock/WakeLockLogger;)Lcom/android/systemui/util/wakelock/WakeLock;
    .locals 3

    const-string v0, "Columbus"

    const-wide/16 v1, 0x7d0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/systemui/util/wakelock/WakeLock;->createPartial(Landroid/content/Context;Lcom/android/systemui/util/wakelock/WakeLockLogger;Ljava/lang/String;J)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object p0

    return-object p0
.end method
