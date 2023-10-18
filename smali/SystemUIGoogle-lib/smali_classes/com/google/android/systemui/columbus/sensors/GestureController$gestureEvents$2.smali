.class final Lcom/google/android/systemui/columbus/sensors/GestureController$gestureEvents$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.columbus.sensors.GestureController$gestureEvents$2"
    f = "GestureController.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    invoke-static {p2}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance p0, Lcom/google/android/systemui/columbus/sensors/GestureController$gestureEvents$2;

    invoke-direct {p0, p3}, Lcom/google/android/systemui/columbus/sensors/GestureController$gestureEvents$2;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureController$gestureEvents$2;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureController$gestureEvents$2;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/sensors/GestureController$gestureEvents$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController$gestureEvents$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureController$gestureEvents$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/systemui/columbus/sensors/GestureSensor$GestureDetectionEvent;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController$gestureEvents$2;->L$1:Ljava/lang/Object;

    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    new-instance p0, Lkotlin/Pair;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
