.class public final Lcom/google/android/systemui/elmyra/actions/LaunchOpa;
.super Lcom/google/android/systemui/elmyra/actions/Action;
.source ""

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field public final mAssistManager:Lcom/android/systemui/assist/AssistManager;

.field public final mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final mContext:Landroid/content/Context;

.field public mEnableForAnyAssistant:Z

.field public mIsGestureEnabled:Z

.field public mIsOpaEnabled:Z

.field public final mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mOpaEnabledListener:Lcom/google/android/systemui/elmyra/actions/LaunchOpa$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/assist/AssistManager;Landroid/app/KeyguardManager;Lcom/android/systemui/tuner/TunerService;Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;)V
    .locals 2

    invoke-static {p7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p7

    invoke-direct {p0, p2, p7}, Lcom/google/android/systemui/elmyra/actions/Action;-><init>(Ljava/util/concurrent/Executor;Ljava/util/List;)V

    new-instance p2, Lcom/google/android/systemui/elmyra/actions/LaunchOpa$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/elmyra/actions/LaunchOpa$1;-><init>(Lcom/google/android/systemui/elmyra/actions/LaunchOpa;)V

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mOpaEnabledListener:Lcom/google/android/systemui/elmyra/actions/LaunchOpa$1;

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    iput-object p4, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    iput-object p5, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const/4 p5, -0x2

    const-string p7, "assist_gesture_enabled"

    const/4 v0, 0x1

    invoke-static {p3, p7, v0, p5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p3

    const/4 p5, 0x0

    if-eqz p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, p5

    :goto_0
    iput-boolean p3, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mIsGestureEnabled:Z

    new-instance p3, Lcom/google/android/systemui/elmyra/UserContentObserver;

    invoke-static {p7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p7

    new-instance v1, Lcom/google/android/systemui/elmyra/actions/LaunchOpa$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/elmyra/actions/LaunchOpa$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/elmyra/actions/LaunchOpa;)V

    invoke-direct {p3, p1, p7, v1, v0}, Lcom/google/android/systemui/elmyra/UserContentObserver;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/util/function/Consumer;Z)V

    const-string p3, "assist_gesture_any_assistant"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p6, p0, p7}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p3, p5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, p5

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mEnableForAnyAssistant:Z

    check-cast p4, Lcom/google/android/systemui/assist/AssistManagerGoogle;

    invoke-virtual {p4, p2}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->addOpaEnabledListener(Lcom/google/android/systemui/assist/OpaEnabledListener;)V

    return-void
.end method


# virtual methods
.method public final isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mIsGestureEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mIsOpaEnabled:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final launchOpa(J)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    goto :goto_0

    :cond_0
    const/16 v1, 0xd

    :goto_0
    const-string v2, "triggered_by"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "latency_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "invocation_type"

    const/4 p2, 0x2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onProgress(IF)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/elmyra/actions/Action;->updateFeedbackEffects(IF)V

    return-void
.end method

.method public final onTrigger(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->collapseShade()V

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/elmyra/actions/Action;->triggerFeedbackEffects(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;->mActionId:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->launchOpa(J)V

    return-void
.end method

.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "assist_gesture_any_assistant"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mEnableForAnyAssistant:Z

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    check-cast p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;

    iget-object p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mOpaEnabledReceiver:Lcom/google/android/systemui/assist/OpaEnabledReceiver;

    iget-object p1, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->dispatchOpaEnabledState(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [mIsGestureEnabled -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mIsGestureEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; mIsOpaEnabled -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mIsOpaEnabled:Z

    const-string v1, "]"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
