.class final Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchIntSecureSetting$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.columbus.fetchers.ContentFetcher$fetchIntSecureSetting$2"
    f = "ContentFetcher.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $defaultValue:I

.field final synthetic $settingKey:Ljava/lang/String;

.field final synthetic $userId:I

.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;Ljava/lang/String;IILkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchIntSecureSetting$2;->this$0:Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchIntSecureSetting$2;->$settingKey:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchIntSecureSetting$2;->$defaultValue:I

    iput p4, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchIntSecureSetting$2;->$userId:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance p1, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchIntSecureSetting$2;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchIntSecureSetting$2;->this$0:Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchIntSecureSetting$2;->$settingKey:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchIntSecureSetting$2;->$defaultValue:I

    iget v4, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchIntSecureSetting$2;->$userId:I

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchIntSecureSetting$2;-><init>(Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;Ljava/lang/String;IILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchIntSecureSetting$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchIntSecureSetting$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchIntSecureSetting$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchIntSecureSetting$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchIntSecureSetting$2;->this$0:Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;->contentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchIntSecureSetting$2;->$settingKey:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchIntSecureSetting$2;->$defaultValue:I

    iget p0, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchIntSecureSetting$2;->$userId:I

    invoke-static {p1, v0, v1, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
