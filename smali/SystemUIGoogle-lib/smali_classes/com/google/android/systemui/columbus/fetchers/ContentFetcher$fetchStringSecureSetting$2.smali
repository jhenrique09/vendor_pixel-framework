.class final Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchStringSecureSetting$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.columbus.fetchers.ContentFetcher$fetchStringSecureSetting$2"
    f = "ContentFetcher.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $defaultValue:Ljava/lang/String;

.field final synthetic $settingKey:Ljava/lang/String;

.field final synthetic $userId:I

.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;


# direct methods
.method public constructor <init>(ILcom/google/android/systemui/columbus/fetchers/ContentFetcher;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchStringSecureSetting$2;->this$0:Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchStringSecureSetting$2;->$settingKey:Ljava/lang/String;

    iput p1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchStringSecureSetting$2;->$userId:I

    iput-object p4, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchStringSecureSetting$2;->$defaultValue:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance p1, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchStringSecureSetting$2;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchStringSecureSetting$2;->this$0:Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;

    iget-object v3, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchStringSecureSetting$2;->$settingKey:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchStringSecureSetting$2;->$userId:I

    iget-object v4, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchStringSecureSetting$2;->$defaultValue:Ljava/lang/String;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchStringSecureSetting$2;-><init>(ILcom/google/android/systemui/columbus/fetchers/ContentFetcher;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchStringSecureSetting$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchStringSecureSetting$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchStringSecureSetting$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchStringSecureSetting$2;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchStringSecureSetting$2;->this$0:Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;->contentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchStringSecureSetting$2;->$settingKey:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchStringSecureSetting$2;->$userId:I

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$fetchStringSecureSetting$2;->$defaultValue:Ljava/lang/String;

    :cond_0
    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
