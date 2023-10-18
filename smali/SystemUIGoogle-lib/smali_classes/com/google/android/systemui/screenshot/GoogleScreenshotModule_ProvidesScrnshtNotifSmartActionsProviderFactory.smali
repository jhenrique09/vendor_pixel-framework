.class public abstract Lcom/google/android/systemui/screenshot/GoogleScreenshotModule_ProvidesScrnshtNotifSmartActionsProviderFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static providesScrnshtNotifSmartActionsProvider(Lcom/android/systemui/util/DeviceConfigProxy;Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/Handler;)Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "enable_screenshot_notification_smart_actions"

    const/4 v0, 0x1

    const-string v1, "systemui"

    invoke-static {v1, p0, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;-><init>()V

    :goto_0
    return-object p0
.end method
