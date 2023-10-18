.class final Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $broadcastReceiver:Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1$broadcastReceiver$1;

.field final synthetic this$0:Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher;Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1$broadcastReceiver$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1$1;->this$0:Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1$1;->$broadcastReceiver:Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1$broadcastReceiver$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1$1;->this$0:Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1$1;->$broadcastReceiver:Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher$createDirectFlow$1$broadcastReceiver$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
