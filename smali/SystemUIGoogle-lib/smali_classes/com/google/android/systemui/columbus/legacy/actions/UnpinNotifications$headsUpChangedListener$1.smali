.class public final Lcom/google/android/systemui/columbus/legacy/actions/UnpinNotifications$headsUpChangedListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/actions/UnpinNotifications;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/actions/UnpinNotifications;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/UnpinNotifications$headsUpChangedListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/UnpinNotifications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHeadsUpPinnedModeChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/UnpinNotifications$headsUpChangedListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/UnpinNotifications;

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/UnpinNotifications;->hasPinnedHeadsUp:Z

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/UnpinNotifications;->silenceAlertsDisabled:Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->isBlocking()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/UnpinNotifications;->hasPinnedHeadsUp:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/legacy/actions/Action;->setAvailable(Z)V

    return-void
.end method
