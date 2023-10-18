.class public final Lcom/google/android/systemui/columbus/legacy/actions/UnpinNotifications$gateListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/columbus/legacy/gates/Gate$Listener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/actions/UnpinNotifications;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/actions/UnpinNotifications;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/UnpinNotifications$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/UnpinNotifications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGateChanged(Lcom/google/android/systemui/columbus/legacy/gates/Gate;)V
    .locals 2

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/UnpinNotifications$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/UnpinNotifications;

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/UnpinNotifications;->silenceAlertsDisabled:Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->isBlocking()Z

    move-result p1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/actions/UnpinNotifications;->headsUpChangedListener:Lcom/google/android/systemui/columbus/legacy/actions/UnpinNotifications$headsUpChangedListener$1;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/actions/UnpinNotifications;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz p1, :cond_0

    if-eqz v1, :cond_3

    iget-object p0, v1, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mListeners:Lcom/android/systemui/util/ListenerSet;

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/ListenerSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    :cond_1
    if-eqz v1, :cond_2

    iget-boolean p1, v1, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHasPinnedNotification:Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/UnpinNotifications;->hasPinnedHeadsUp:Z

    :cond_3
    :goto_1
    return-void
.end method
