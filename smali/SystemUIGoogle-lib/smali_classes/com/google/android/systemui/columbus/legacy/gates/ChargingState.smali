.class public final Lcom/google/android/systemui/columbus/legacy/gates/ChargingState;
.super Lcom/google/android/systemui/columbus/legacy/gates/TransientGate;
.source ""


# instance fields
.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final gateDuration:J

.field public final powerReceiver:Lcom/google/android/systemui/columbus/legacy/gates/ChargingState$powerReceiver$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/legacy/gates/TransientGate;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/ChargingState;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/ChargingState;->gateDuration:J

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/gates/ChargingState$powerReceiver$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/legacy/gates/ChargingState$powerReceiver$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/ChargingState;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/ChargingState;->powerReceiver:Lcom/google/android/systemui/columbus/legacy/gates/ChargingState$powerReceiver$1;

    return-void
.end method


# virtual methods
.method public final onActivate()V
    .locals 8

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/ChargingState;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/gates/ChargingState;->powerReceiver:Lcom/google/android/systemui/columbus/legacy/gates/ChargingState$powerReceiver$1;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3c

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    return-void
.end method

.method public final onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/ChargingState;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/ChargingState;->powerReceiver:Lcom/google/android/systemui/columbus/legacy/gates/ChargingState$powerReceiver$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
