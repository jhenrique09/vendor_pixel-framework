.class public final Lcom/google/android/systemui/columbus/legacy/actions/OpenNotificationShade;
.super Lcom/google/android/systemui/columbus/legacy/actions/UserAction;
.source ""


# instance fields
.field public final centralSurfaces:Ldagger/Lazy;

.field public final notificationShadeWindowController:Ldagger/Lazy;

.field public final tag:Ljava/lang/String;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/legacy/actions/UserAction;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/actions/OpenNotificationShade;->notificationShadeWindowController:Ldagger/Lazy;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/legacy/actions/OpenNotificationShade;->centralSurfaces:Ldagger/Lazy;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/legacy/actions/OpenNotificationShade;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const-string p1, "Columbus/OpenNotif"

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/OpenNotificationShade;->tag:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/legacy/actions/Action;->setAvailable(Z)V

    return-void
.end method


# virtual methods
.method public final getTag$vendor__unbundled_google__packages__SystemUIGoogle__android_common__sysuig()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/OpenNotificationShade;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public final onTrigger(Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/OpenNotificationShade;->notificationShadeWindowController:Ldagger/Lazy;

    check-cast p1, Ldagger/internal/DoubleCheck;

    invoke-virtual {p1}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast p1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object p1, p1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-boolean p1, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->panelExpanded:Z

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/actions/OpenNotificationShade;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/OpenNotificationShade;->centralSurfaces:Ldagger/Lazy;

    if-eqz p1, :cond_0

    check-cast p0, Ldagger/internal/DoubleCheck;

    invoke-virtual {p0}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->postAnimateCollapsePanels()V

    sget-object p0, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_NOTIFICATION_SHADE_CLOSE:Lcom/google/android/systemui/columbus/ColumbusEvent;

    invoke-interface {v0, p0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto :goto_0

    :cond_0
    check-cast p0, Ldagger/internal/DoubleCheck;

    invoke-virtual {p0}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommandQueueCallbacks:Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->animateExpandNotificationsPanel()V

    sget-object p0, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_NOTIFICATION_SHADE_OPEN:Lcom/google/android/systemui/columbus/ColumbusEvent;

    invoke-interface {v0, p0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :goto_0
    return-void
.end method
