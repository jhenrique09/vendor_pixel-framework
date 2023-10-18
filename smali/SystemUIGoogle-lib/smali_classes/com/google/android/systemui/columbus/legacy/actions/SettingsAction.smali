.class public final Lcom/google/android/systemui/columbus/legacy/actions/SettingsAction;
.super Lcom/google/android/systemui/columbus/legacy/actions/ServiceAction;
.source ""


# instance fields
.field public final centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final supportedCallerPackages:Ljava/util/Set;

.field public final tag:Ljava/lang/String;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/legacy/actions/ServiceAction;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/actions/SettingsAction;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/legacy/actions/SettingsAction;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const-string p1, "Columbus/SettingsAction"

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/SettingsAction;->tag:Ljava/lang/String;

    const-string p1, "com.android.settings"

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/SettingsAction;->supportedCallerPackages:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final getTag$vendor__unbundled_google__packages__SystemUIGoogle__android_common__sysuig()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/SettingsAction;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public final onTrigger(Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/SettingsAction;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_ON_SETTINGS:Lcom/google/android/systemui/columbus/ColumbusEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/SettingsAction;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->collapseShade()V

    const-string p1, "Columbus/ServiceAction"

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/actions/ServiceAction;->columbusServiceGestureListener:Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    check-cast v0, Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener$Stub$Proxy;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener$Stub$Proxy;->onTrigger()V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Unable to send trigger, setting listener to null"

    invoke-static {p1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v1, p0, Lcom/google/android/systemui/columbus/legacy/actions/ServiceAction;->columbusServiceGestureListener:Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/actions/ServiceAction;->updateAvailable()V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "Listener crashed or closed without unregistering"

    invoke-static {p1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v1, p0, Lcom/google/android/systemui/columbus/legacy/actions/ServiceAction;->columbusServiceGestureListener:Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/actions/ServiceAction;->updateAvailable()V

    :cond_0
    :goto_0
    return-void
.end method
