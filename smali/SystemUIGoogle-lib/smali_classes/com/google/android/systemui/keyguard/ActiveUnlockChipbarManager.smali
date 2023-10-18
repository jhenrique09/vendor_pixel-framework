.class public final Lcom/google/android/systemui/keyguard/ActiveUnlockChipbarManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final chipbarCoordinator:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;

.field public final globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final keyguardStateControllerCallback:Lcom/google/android/systemui/keyguard/ActiveUnlockChipbarManager$keyguardStateControllerCallback$1;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final keyguardUpdateMonitorCallback:Lcom/google/android/systemui/keyguard/ActiveUnlockChipbarManager$keyguardUpdateMonitorCallback$1;

.field public final sessionTracker:Lcom/android/systemui/log/SessionTracker;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/log/SessionTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/keyguard/ActiveUnlockChipbarManager;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p2, p0, Lcom/google/android/systemui/keyguard/ActiveUnlockChipbarManager;->chipbarCoordinator:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;

    iput-object p3, p0, Lcom/google/android/systemui/keyguard/ActiveUnlockChipbarManager;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p4, p0, Lcom/google/android/systemui/keyguard/ActiveUnlockChipbarManager;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    iput-object p5, p0, Lcom/google/android/systemui/keyguard/ActiveUnlockChipbarManager;->sessionTracker:Lcom/android/systemui/log/SessionTracker;

    new-instance p1, Lcom/google/android/systemui/keyguard/ActiveUnlockChipbarManager$keyguardStateControllerCallback$1;

    invoke-direct {p1}, Lcom/google/android/systemui/keyguard/ActiveUnlockChipbarManager$keyguardStateControllerCallback$1;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/keyguard/ActiveUnlockChipbarManager;->keyguardStateControllerCallback:Lcom/google/android/systemui/keyguard/ActiveUnlockChipbarManager$keyguardStateControllerCallback$1;

    new-instance p1, Lcom/google/android/systemui/keyguard/ActiveUnlockChipbarManager$keyguardUpdateMonitorCallback$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/keyguard/ActiveUnlockChipbarManager$keyguardUpdateMonitorCallback$1;-><init>(Lcom/google/android/systemui/keyguard/ActiveUnlockChipbarManager;)V

    iput-object p1, p0, Lcom/google/android/systemui/keyguard/ActiveUnlockChipbarManager;->keyguardUpdateMonitorCallback:Lcom/google/android/systemui/keyguard/ActiveUnlockChipbarManager$keyguardUpdateMonitorCallback$1;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/keyguard/ActiveUnlockChipbarManager;->keyguardStateControllerCallback:Lcom/google/android/systemui/keyguard/ActiveUnlockChipbarManager$keyguardStateControllerCallback$1;

    iget-object v1, p0, Lcom/google/android/systemui/keyguard/ActiveUnlockChipbarManager;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/systemui/keyguard/ActiveUnlockChipbarManager;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/google/android/systemui/keyguard/ActiveUnlockChipbarManager;->keyguardUpdateMonitorCallback:Lcom/google/android/systemui/keyguard/ActiveUnlockChipbarManager$keyguardUpdateMonitorCallback$1;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method
