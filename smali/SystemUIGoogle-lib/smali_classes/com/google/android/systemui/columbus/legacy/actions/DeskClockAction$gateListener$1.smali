.class public final Lcom/google/android/systemui/columbus/legacy/actions/DeskClockAction$gateListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/columbus/legacy/gates/Gate$Listener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/actions/DeskClockAction;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/actions/DeskClockAction;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/DeskClockAction$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/DeskClockAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGateChanged(Lcom/google/android/systemui/columbus/legacy/gates/Gate;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/DeskClockAction$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/DeskClockAction;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/actions/DeskClockAction;->updateBroadcastReceiver()V

    return-void
.end method
