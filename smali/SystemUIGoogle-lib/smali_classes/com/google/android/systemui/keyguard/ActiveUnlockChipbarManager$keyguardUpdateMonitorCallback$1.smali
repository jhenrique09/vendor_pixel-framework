.class public final Lcom/google/android/systemui/keyguard/ActiveUnlockChipbarManager$keyguardUpdateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source ""


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/keyguard/ActiveUnlockChipbarManager;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/keyguard/ActiveUnlockChipbarManager;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/keyguard/ActiveUnlockChipbarManager$keyguardUpdateMonitorCallback$1;->this$0:Lcom/google/android/systemui/keyguard/ActiveUnlockChipbarManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTrustGrantedForCurrentUser(ZZLcom/android/keyguard/TrustGrantFlags;Ljava/lang/String;)V
    .locals 14

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    iget-object v0, v0, Lcom/google/android/systemui/keyguard/ActiveUnlockChipbarManager$keyguardUpdateMonitorCallback$1;->this$0:Lcom/google/android/systemui/keyguard/ActiveUnlockChipbarManager;

    iget-object v1, v0, Lcom/google/android/systemui/keyguard/ActiveUnlockChipbarManager;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    invoke-interface {v1}, Lcom/android/systemui/util/settings/SettingsProxy;->getUserId()I

    move-result v2

    const-string v3, "chip_all_watch_unlocks"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/systemui/util/settings/SettingsProxy;->getBoolForUser(ILjava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    invoke-static/range {p4 .. p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v13, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;

    new-instance v2, Lcom/android/systemui/common/shared/model/TintedIcon;

    new-instance v1, Lcom/android/systemui/common/shared/model/Icon$Resource;

    const v3, 0x7f080945

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    const v3, 0x1120098

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/common/shared/model/TintedIcon;-><init>(Lcom/android/systemui/common/shared/model/Icon;Ljava/lang/Integer;)V

    new-instance v3, Lcom/android/systemui/common/shared/model/Text$Loaded;

    move-object/from16 v1, p4

    invoke-direct {v3, v1}, Lcom/android/systemui/common/shared/model/Text$Loaded;-><init>(Ljava/lang/String;)V

    const-string v7, "Unlock Chip"

    const-string v8, "UNLOCK_CHIP"

    const-string v1, "chip_duration"

    const/16 v4, 0x5dc

    iget-object v5, v0, Lcom/google/android/systemui/keyguard/ActiveUnlockChipbarManager;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    invoke-interface {v5, v4, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(ILjava/lang/String;)I

    move-result v9

    const-string v10, "active_unlock"

    sget-object v11, Lcom/android/systemui/temporarydisplay/ViewPriority;->CRITICAL:Lcom/android/systemui/temporarydisplay/ViewPriority;

    iget-object v1, v0, Lcom/google/android/systemui/keyguard/ActiveUnlockChipbarManager;->sessionTracker:Lcom/android/systemui/log/SessionTracker;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/systemui/log/SessionTracker;->getSessionId(I)Lcom/android/internal/logging/InstanceId;

    move-result-object v12

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, v13

    invoke-direct/range {v1 .. v12}, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;-><init>(Lcom/android/systemui/common/shared/model/TintedIcon;Lcom/android/systemui/common/shared/model/Text;Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem;Landroid/os/VibrationEffect;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/android/systemui/temporarydisplay/ViewPriority;Lcom/android/internal/logging/InstanceId;)V

    iget-object v0, v0, Lcom/google/android/systemui/keyguard/ActiveUnlockChipbarManager;->chipbarCoordinator:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;

    invoke-virtual {v0, v13}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->displayView(Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;)V

    :cond_2
    :goto_0
    return-void
.end method
