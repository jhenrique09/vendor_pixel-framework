.class public final Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;
.super Lcom/google/android/systemui/columbus/legacy/gates/Gate;
.source ""


# instance fields
.field public batterySaverEnabled:Z

.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public isDeviceInteractive:Z

.field public final powerManager:Ldagger/Lazy;

.field public final receiver:Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$receiver$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Ldagger/Lazy;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;->powerManager:Ldagger/Lazy;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$receiver$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$receiver$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;->receiver:Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$receiver$1;

    return-void
.end method


# virtual methods
.method public final onActivate()V
    .locals 8

    new-instance v2, Landroid/content/IntentFilter;

    const-string v0, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;->receiver:Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$receiver$1;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3c

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    new-instance v0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$refreshStatus$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {p0, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public final onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;->receiver:Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$receiver$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$toString$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState$toString$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/PowerSaveState;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
