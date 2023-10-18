.class public final Lcom/google/android/systemui/columbus/legacy/actions/ManageMedia;
.super Lcom/google/android/systemui/columbus/legacy/actions/UserAction;
.source ""


# instance fields
.field public final audioManager:Landroid/media/AudioManager;

.field public final tag:Ljava/lang/String;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/legacy/actions/UserAction;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/actions/ManageMedia;->audioManager:Landroid/media/AudioManager;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/legacy/actions/ManageMedia;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const-string p1, "Columbus/ManageMedia"

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/ManageMedia;->tag:Ljava/lang/String;

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

.method public final availableOnScreenOff()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getTag$vendor__unbundled_google__packages__SystemUIGoogle__android_common__sysuig()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/ManageMedia;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public final onTrigger(Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/systemui/columbus/legacy/actions/ManageMedia;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    const/4 v8, 0x0

    const/4 v14, 0x1

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActiveRemotely()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v8

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v14

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    new-instance v11, Landroid/view/KeyEvent;

    const/16 v9, 0x55

    const/4 v10, 0x0

    move-object v3, v11

    move-wide v4, v12

    move-wide v6, v12

    invoke-direct/range {v3 .. v10}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {v1, v11}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    new-instance v3, Landroid/view/KeyEvent;

    const/16 v15, 0x55

    const/16 v16, 0x0

    move-object v9, v3

    move-wide v10, v12

    invoke-direct/range {v9 .. v16}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    iget-object v0, v0, Lcom/google/android/systemui/columbus/legacy/actions/ManageMedia;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-eqz v2, :cond_2

    sget-object v1, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_PAUSE_MEDIA:Lcom/google/android/systemui/columbus/ColumbusEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_PLAY_MEDIA:Lcom/google/android/systemui/columbus/ColumbusEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :goto_2
    return-void
.end method
