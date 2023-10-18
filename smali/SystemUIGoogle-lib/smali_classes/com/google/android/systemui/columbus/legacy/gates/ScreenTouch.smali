.class public final Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch;
.super Lcom/google/android/systemui/columbus/legacy/gates/TransientGate;
.source ""


# instance fields
.field public final gateListener:Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch$gateListener$1;

.field public final inputEventListener:Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch$inputEventListener$1;

.field public inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

.field public inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

.field public final inputMonitorProvider:Ljavax/inject/Provider;

.field public final powerState:Lcom/google/android/systemui/columbus/legacy/gates/PowerState;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/gates/PowerState;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$WMComponentImpl$SwitchingProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/legacy/gates/TransientGate;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch;->powerState:Lcom/google/android/systemui/columbus/legacy/gates/PowerState;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch;->inputMonitorProvider:Ljavax/inject/Provider;

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch$gateListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch$gateListener$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch;->gateListener:Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch$gateListener$1;

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch$inputEventListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch$inputEventListener$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch;->inputEventListener:Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch$inputEventListener$1;

    return-void
.end method


# virtual methods
.method public final onActivate()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch;->powerState:Lcom/google/android/systemui/columbus/legacy/gates/PowerState;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch;->gateListener:Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch$gateListener$1;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->registerListener(Lcom/google/android/systemui/columbus/legacy/gates/Gate$Listener;)V

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->isBlocking()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch$startListeningForTouch$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch$startListeningForTouch$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {v3, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->setBlocking(Z)V

    return-void
.end method

.method public final onDeactivate()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch;->powerState:Lcom/google/android/systemui/columbus/legacy/gates/PowerState;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch;->gateListener:Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch$gateListener$1;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->unregisterListener(Lcom/google/android/systemui/columbus/legacy/gates/Gate$Listener;)V

    new-instance v0, Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch$stopListeningForTouch$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch$stopListeningForTouch$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {p0, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method
