.class public final Lcom/google/android/systemui/columbus/sensors/GestureController$special$$inlined$filter$1$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/sensors/GestureController;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/google/android/systemui/columbus/sensors/GestureController;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/systemui/columbus/sensors/GestureController$special$$inlined$filter$1$2;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/google/android/systemui/columbus/sensors/GestureController$special$$inlined$filter$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/google/android/systemui/columbus/sensors/GestureController$special$$inlined$filter$1$2$1;

    iget v1, v0, Lcom/google/android/systemui/columbus/sensors/GestureController$special$$inlined$filter$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/systemui/columbus/sensors/GestureController$special$$inlined$filter$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/systemui/columbus/sensors/GestureController$special$$inlined$filter$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/google/android/systemui/columbus/sensors/GestureController$special$$inlined$filter$1$2$1;-><init>(Lcom/google/android/systemui/columbus/sensors/GestureController$special$$inlined$filter$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/google/android/systemui/columbus/sensors/GestureController$special$$inlined$filter$1$2$1;->result:Ljava/lang/Object;

    iget v0, v0, Lcom/google/android/systemui/columbus/sensors/GestureController$special$$inlined$filter$1$2$1;->label:I

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    if-ne v0, p0, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-static {p1}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController$special$$inlined$filter$1$2;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureController;

    iget-object p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    check-cast p1, Lcom/android/systemui/util/time/SystemClockImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->lastTimestampMap:Landroid/util/SparseLongArray;

    const/4 p0, 0x0

    throw p0
.end method
