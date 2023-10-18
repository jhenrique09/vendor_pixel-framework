.class public final Lcom/google/android/systemui/columbus/legacy/actions/DeskClockAction$userSwitchCallback$1;
.super Landroid/app/SynchronousUserSwitchObserver;
.source ""


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/actions/DeskClockAction;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/actions/DeskClockAction;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/DeskClockAction$userSwitchCallback$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/DeskClockAction;

    invoke-direct {p0}, Landroid/app/SynchronousUserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserSwitching(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/DeskClockAction$userSwitchCallback$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/DeskClockAction;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/actions/DeskClockAction;->updateBroadcastReceiver()V

    return-void
.end method
