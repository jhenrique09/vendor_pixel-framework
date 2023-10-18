.class public final Lcom/google/android/systemui/columbus/fetchers/GateFetcher$getBlockingGateFlow$1$apply$$inlined$combine$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $flowArray:[Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>([Lkotlinx/coroutines/flow/Flow;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/GateFetcher$getBlockingGateFlow$1$apply$$inlined$combine$1$2;->$flowArray:[Lkotlinx/coroutines/flow/Flow;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/fetchers/GateFetcher$getBlockingGateFlow$1$apply$$inlined$combine$1$2;->$flowArray:[Lkotlinx/coroutines/flow/Flow;

    array-length p0, p0

    new-array p0, p0, [Lkotlin/Pair;

    return-object p0
.end method
