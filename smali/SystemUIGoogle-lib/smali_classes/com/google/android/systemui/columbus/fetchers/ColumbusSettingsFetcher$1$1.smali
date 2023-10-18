.class public final Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $backupManagerProxy:Lcom/android/systemui/util/BackupManagerProxy;

.field public final synthetic this$0:Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/BackupManagerProxy;Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$1$1;->$backupManagerProxy:Lcom/android/systemui/util/BackupManagerProxy;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$1$1;->this$0:Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    iget-object p2, p0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$1$1;->this$0:Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;

    iget-object p2, p2, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;->backupPackageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$1$1;->$backupManagerProxy:Lcom/android/systemui/util/BackupManagerProxy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Landroid/app/backup/BackupManager;->dataChangedForUser(ILjava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
