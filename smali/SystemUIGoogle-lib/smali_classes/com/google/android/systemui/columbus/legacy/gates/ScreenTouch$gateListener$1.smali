.class public final Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch$gateListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/columbus/legacy/gates/Gate$Listener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGateChanged(Lcom/google/android/systemui/columbus/legacy/gates/Gate;)V
    .locals 3

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch;

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch;->powerState:Lcom/google/android/systemui/columbus/legacy/gates/PowerState;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->isBlocking()Z

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch$stopListeningForTouch$1;

    invoke-direct {p1, p0, v1}, Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch$stopListeningForTouch$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v1, v1, p1, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch$startListeningForTouch$1;

    invoke-direct {p1, p0, v1}, Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch$startListeningForTouch$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v1, v1, p1, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :goto_0
    return-void
.end method
