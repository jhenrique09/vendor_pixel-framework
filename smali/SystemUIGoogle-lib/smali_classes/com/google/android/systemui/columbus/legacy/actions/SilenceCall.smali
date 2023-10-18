.class public final Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall;
.super Lcom/google/android/systemui/columbus/legacy/actions/Action;
.source ""


# instance fields
.field public isPhoneRinging:Z

.field public final phoneStateListener:Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall$phoneStateListener$1;

.field public final silenceAlertsDisabled:Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled;

.field public final tag:Ljava/lang/String;

.field public final telecomManager:Ldagger/Lazy;

.field public final telephonyListenerManager:Ldagger/Lazy;

.field public final telephonyManager:Ldagger/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/columbus/legacy/actions/Action;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall;->silenceAlertsDisabled:Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall;->telecomManager:Ldagger/Lazy;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall;->telephonyManager:Ldagger/Lazy;

    iput-object p5, p0, Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall;->telephonyListenerManager:Ldagger/Lazy;

    const-string p1, "Columbus/SilenceCall"

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall;->tag:Ljava/lang/String;

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall$phoneStateListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall$phoneStateListener$1;-><init>(Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall;->phoneStateListener:Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall$phoneStateListener$1;

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall$gateListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall$gateListener$1;-><init>(Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall;)V

    invoke-virtual {p2, p1}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->registerListener(Lcom/google/android/systemui/columbus/legacy/gates/Gate$Listener;)V

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall;->updatePhoneStateListener()V

    return-void
.end method


# virtual methods
.method public final getTag$vendor__unbundled_google__packages__SystemUIGoogle__android_common__sysuig()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public final onTrigger(Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall;->telecomManager:Ldagger/Lazy;

    check-cast p0, Ldagger/internal/DoubleCheck;

    invoke-virtual {p0}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->silenceRinger()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-super {p0}, Lcom/google/android/systemui/columbus/legacy/actions/Action;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall;->isPhoneRinging:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " [isPhoneRinging -> "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updatePhoneStateListener()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall;->silenceAlertsDisabled:Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->isBlocking()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall;->phoneStateListener:Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall$phoneStateListener$1;

    iget-object v3, p0, Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall;->telephonyListenerManager:Ldagger/Lazy;

    if-eqz v1, :cond_0

    check-cast v3, Ldagger/internal/DoubleCheck;

    invoke-virtual {v3}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/telephony/TelephonyListenerManager;

    invoke-virtual {v1, v2}, Lcom/android/systemui/telephony/TelephonyListenerManager;->removeCallStateListener(Landroid/telephony/TelephonyCallback$CallStateListener;)V

    goto :goto_0

    :cond_0
    check-cast v3, Ldagger/internal/DoubleCheck;

    invoke-virtual {v3}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/telephony/TelephonyListenerManager;

    invoke-virtual {v1, v2}, Lcom/android/systemui/telephony/TelephonyListenerManager;->addCallStateListener(Landroid/telephony/TelephonyCallback$CallStateListener;)V

    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall;->telephonyManager:Ldagger/Lazy;

    check-cast v1, Ldagger/internal/DoubleCheck;

    invoke-virtual {v1}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall;->isPhoneRinging:Z

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->isBlocking()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall;->isPhoneRinging:Z

    if-eqz v0, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p0, v2}, Lcom/google/android/systemui/columbus/legacy/actions/Action;->setAvailable(Z)V

    return-void
.end method
