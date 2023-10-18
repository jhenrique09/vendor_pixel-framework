.class public final Lcom/google/android/systemui/columbus/legacy/actions/TakeScreenshot;
.super Lcom/google/android/systemui/columbus/legacy/actions/UserAction;
.source ""


# instance fields
.field public final handler:Landroid/os/Handler;

.field public final screenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

.field public final tag:Ljava/lang/String;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/legacy/actions/UserAction;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/actions/TakeScreenshot;->handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/legacy/actions/TakeScreenshot;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const-string p2, "Columbus/TakeScreenshot"

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/actions/TakeScreenshot;->tag:Ljava/lang/String;

    new-instance p2, Lcom/android/internal/util/ScreenshotHelper;

    invoke-direct {p2, p1}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/actions/TakeScreenshot;->screenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/legacy/actions/Action;->setAvailable(Z)V

    return-void
.end method


# virtual methods
.method public final availableOnLockscreen()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getTag$vendor__unbundled_google__packages__SystemUIGoogle__android_common__sysuig()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/TakeScreenshot;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public final onTrigger(Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/TakeScreenshot;->screenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/actions/TakeScreenshot;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(ILandroid/os/Handler;Ljava/util/function/Consumer;)V

    sget-object p1, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_SCREENSHOT:Lcom/google/android/systemui/columbus/ColumbusEvent;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/TakeScreenshot;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method
