.class public final Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$keyguardListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/columbus/legacy/gates/Gate$Listener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$keyguardListener$1;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$keyguardListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGateChanged(Lcom/google/android/systemui/columbus/legacy/gates/Gate;)V
    .locals 3

    const/4 p1, 0x3

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$keyguardListener$1;->$r8$classId:I

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$keyguardListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$updateProximityListener$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$updateProximityListener$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {p0, v0, v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void

    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v2, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$updateBlocking$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity$updateBlocking$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/KeyguardProximity;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v0, v0, v2, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
