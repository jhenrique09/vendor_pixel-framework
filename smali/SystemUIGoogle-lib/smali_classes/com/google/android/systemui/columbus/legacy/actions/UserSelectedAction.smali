.class public final Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;
.super Lcom/google/android/systemui/columbus/legacy/actions/Action;
.source ""


# instance fields
.field public currentAction:Lcom/google/android/systemui/columbus/legacy/actions/UserAction;

.field public final keyguardMonitorCallback:Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction$keyguardMonitorCallback$1;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final powerManager:Lcom/google/android/systemui/columbus/legacy/PowerManagerWrapper;

.field public final takeScreenshot:Lcom/google/android/systemui/columbus/legacy/actions/TakeScreenshot;

.field public final userSelectedActions:Ljava/util/Map;

.field public final wakefulnessLifecycleObserver:Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction$wakefulnessLifecycleObserver$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;Ljava/util/Map;Lcom/google/android/systemui/columbus/legacy/actions/TakeScreenshot;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/google/android/systemui/columbus/legacy/PowerManagerWrapper;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/columbus/legacy/actions/Action;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    iput-object p3, p0, Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;->userSelectedActions:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;->takeScreenshot:Lcom/google/android/systemui/columbus/legacy/actions/TakeScreenshot;

    iput-object p5, p0, Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p6, p0, Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;->powerManager:Lcom/google/android/systemui/columbus/legacy/PowerManagerWrapper;

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction$settingsChangeListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction$settingsChangeListener$1;-><init>(Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;)V

    new-instance p5, Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction$keyguardMonitorCallback$1;

    invoke-direct {p5, p0}, Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction$keyguardMonitorCallback$1;-><init>(Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;)V

    iput-object p5, p0, Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;->keyguardMonitorCallback:Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction$keyguardMonitorCallback$1;

    new-instance p5, Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction$wakefulnessLifecycleObserver$1;

    invoke-direct {p5, p0}, Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction$wakefulnessLifecycleObserver$1;-><init>(Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;)V

    iput-object p5, p0, Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;->wakefulnessLifecycleObserver:Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction$wakefulnessLifecycleObserver$1;

    invoke-virtual {p2}, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->selectedAction()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p3, p5, p4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/systemui/columbus/legacy/actions/UserAction;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;->currentAction:Lcom/google/android/systemui/columbus/legacy/actions/UserAction;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string p6, "User Action selected: "

    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "Columbus/SelectedAction"

    invoke-static {p5, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, p1}, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->registerColumbusSettingsChangeListener(Lcom/google/android/systemui/columbus/legacy/ColumbusSettings$ColumbusSettingsChangeListener;)V

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction$sublistener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction$sublistener$1;-><init>(Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;)V

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/systemui/columbus/legacy/actions/UserAction;

    iget-object p3, p3, Lcom/google/android/systemui/columbus/legacy/actions/Action;->listeners:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object p2, p0, Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;->keyguardMonitorCallback:Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction$keyguardMonitorCallback$1;

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;->wakefulnessLifecycleObserver:Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction$wakefulnessLifecycleObserver$1;

    invoke-virtual {p7, p1}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;->updateAvailable()V

    return-void
.end method


# virtual methods
.method public final getTag$vendor__unbundled_google__packages__SystemUIGoogle__android_common__sysuig()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;->currentAction:Lcom/google/android/systemui/columbus/legacy/actions/UserAction;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/actions/Action;->getTag$vendor__unbundled_google__packages__SystemUIGoogle__android_common__sysuig()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final onGestureDetected(ILcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;->currentAction:Lcom/google/android/systemui/columbus/legacy/actions/UserAction;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/legacy/actions/Action;->onGestureDetected(ILcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;)V

    return-void
.end method

.method public final onTrigger(Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;->currentAction:Lcom/google/android/systemui/columbus/legacy/actions/UserAction;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/legacy/actions/Action;->onTrigger(Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-super {p0}, Lcom/google/android/systemui/columbus/legacy/actions/Action;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;->currentAction:Lcom/google/android/systemui/columbus/legacy/actions/UserAction;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " [currentAction -> "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateAvailable()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;->currentAction:Lcom/google/android/systemui/columbus/legacy/actions/UserAction;

    iget-boolean v1, v0, Lcom/google/android/systemui/columbus/legacy/actions/Action;->isAvailable:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/android/systemui/columbus/legacy/actions/Action;->setAvailable(Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/legacy/actions/UserAction;->availableOnScreenOff()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;->powerManager:Lcom/google/android/systemui/columbus/legacy/PowerManagerWrapper;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/legacy/PowerManagerWrapper;->powerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/google/android/systemui/columbus/legacy/actions/Action;->setAvailable(Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;->currentAction:Lcom/google/android/systemui/columbus/legacy/actions/UserAction;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/legacy/actions/UserAction;->availableOnLockscreen()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/google/android/systemui/columbus/legacy/actions/Action;->setAvailable(Z)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/legacy/actions/Action;->setAvailable(Z)V

    :goto_1
    return-void
.end method

.method public final updateFeedbackEffects(ILcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;->currentAction:Lcom/google/android/systemui/columbus/legacy/actions/UserAction;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/legacy/actions/Action;->updateFeedbackEffects(ILcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;)V

    return-void
.end method
