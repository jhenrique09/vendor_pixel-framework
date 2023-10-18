.class public final Lcom/google/android/systemui/columbus/sensors/GestureController$special$$inlined$filter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

.field public final synthetic this$0:Lcom/google/android/systemui/columbus/sensors/GestureController;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/flow/Flow;Lcom/google/android/systemui/columbus/sensors/GestureController;I)V
    .locals 0

    iput p3, p0, Lcom/google/android/systemui/columbus/sensors/GestureController$special$$inlined$filter$1;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureController$special$$inlined$filter$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/sensors/GestureController$special$$inlined$filter$1;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/google/android/systemui/columbus/sensors/GestureController$special$$inlined$filter$1;->$r8$classId:I

    iget-object v3, p0, Lcom/google/android/systemui/columbus/sensors/GestureController$special$$inlined$filter$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController$special$$inlined$filter$1;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureController;

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v2, Lcom/google/android/systemui/columbus/sensors/GestureController$special$$inlined$filter$1$2;

    invoke-direct {v2, p1, p0}, Lcom/google/android/systemui/columbus/sensors/GestureController$special$$inlined$filter$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/google/android/systemui/columbus/sensors/GestureController;)V

    invoke-interface {v3, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_0

    move-object v0, p0

    :cond_0
    return-object v0

    :goto_0
    new-instance v2, Lcom/google/android/systemui/columbus/sensors/GestureController$special$$inlined$filter$2$2;

    invoke-direct {v2, p1, p0}, Lcom/google/android/systemui/columbus/sensors/GestureController$special$$inlined$filter$2$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/google/android/systemui/columbus/sensors/GestureController;)V

    invoke-interface {v3, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_1

    move-object v0, p0

    :cond_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
