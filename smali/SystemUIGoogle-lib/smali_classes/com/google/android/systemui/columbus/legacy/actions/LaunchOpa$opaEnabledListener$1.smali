.class public final Lcom/google/android/systemui/columbus/legacy/actions/LaunchOpa$opaEnabledListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/assist/OpaEnabledListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchOpa;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/actions/LaunchOpa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchOpa$opaEnabledListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchOpa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onOpaEnabledReceived(Landroid/content/Context;ZZZZ)V
    .locals 3

    const/4 p1, 0x0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchOpa$opaEnabledListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchOpa;

    const/4 p5, 0x1

    if-nez p3, :cond_1

    iget-boolean p3, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchOpa;->enableForAnyAssistant:Z

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, p1

    goto :goto_1

    :cond_1
    :goto_0
    move p3, p5

    :goto_1
    const-string v0, "eligible: "

    const-string v1, ", supported: "

    const-string v2, ", opa: "

    invoke-static {v0, p2, v1, p3, v2}, Lcom/android/keyguard/logging/BiometricUnlockLogger$logCalculateModeForFingerprintUnlockingAllowed$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Columbus/LaunchOpa"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    move p2, p5

    goto :goto_2

    :cond_2
    move p2, p1

    :goto_2
    iput-boolean p2, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchOpa;->isOpaEnabled:Z

    iget-boolean p3, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchOpa;->isGestureEnabled:Z

    if-eqz p3, :cond_3

    if-eqz p2, :cond_3

    move p1, p5

    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/legacy/actions/Action;->setAvailable(Z)V

    return-void
.end method
