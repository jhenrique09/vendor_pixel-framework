.class public final Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall$phoneStateListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall$phoneStateListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall$phoneStateListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, v0, Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall;->isPhoneRinging:Z

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall$phoneStateListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall;

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall;->silenceAlertsDisabled:Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->isBlocking()Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/SilenceCall;->isPhoneRinging:Z

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/systemui/columbus/legacy/actions/Action;->setAvailable(Z)V

    return-void
.end method
