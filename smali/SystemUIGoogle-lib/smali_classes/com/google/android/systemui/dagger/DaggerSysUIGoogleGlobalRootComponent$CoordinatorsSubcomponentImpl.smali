.class public final Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public appOpsCoordinatorProvider:Ljavax/inject/Provider;

.field public bubbleCoordinatorProvider:Ljavax/inject/Provider;

.field public conversationCoordinatorProvider:Ljavax/inject/Provider;

.field public dataStoreCoordinatorProvider:Ljavax/inject/Provider;

.field public debugModeCoordinatorProvider:Ljavax/inject/Provider;

.field public deviceProvisionedCoordinatorProvider:Ljavax/inject/Provider;

.field public dismissibilityCoordinatorProvider:Ljavax/inject/Provider;

.field public groupCountCoordinatorProvider:Ljavax/inject/Provider;

.field public groupWhenCoordinatorProvider:Ljavax/inject/Provider;

.field public gutsCoordinatorProvider:Ljavax/inject/Provider;

.field public headsUpCoordinatorProvider:Ljavax/inject/Provider;

.field public hideLocallyDismissedNotifsCoordinatorProvider:Ljavax/inject/Provider;

.field public hideNotifsForOtherUsersCoordinatorProvider:Ljavax/inject/Provider;

.field public keyguardCoordinatorProvider:Ljavax/inject/Provider;

.field public mediaCoordinatorProvider:Ljavax/inject/Provider;

.field public notifCoordinatorsImplProvider:Ljavax/inject/Provider;

.field public preparationCoordinatorProvider:Ljavax/inject/Provider;

.field public rankingCoordinatorProvider:Ljavax/inject/Provider;

.field public remoteInputCoordinatorProvider:Ljavax/inject/Provider;

.field public rowAppearanceCoordinatorProvider:Ljavax/inject/Provider;

.field public sensitiveContentCoordinatorImplProvider:Ljavax/inject/Provider;

.field public smartspaceDedupingCoordinatorProvider:Ljavax/inject/Provider;

.field public stackCoordinatorProvider:Ljavax/inject/Provider;

.field public final sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

.field public viewConfigCoordinatorProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-static {p1, p2, p0, v0, v3}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;II)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->dataStoreCoordinatorProvider:Ljavax/inject/Provider;

    const/4 v0, 0x2

    const/4 v4, 0x2

    invoke-static {p1, p2, p0, v1, v3}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;II)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->hideLocallyDismissedNotifsCoordinatorProvider:Ljavax/inject/Provider;

    const/4 v1, 0x3

    invoke-static {p1, p2, p0, v1, v3}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;II)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->hideNotifsForOtherUsersCoordinatorProvider:Ljavax/inject/Provider;

    const/4 v1, 0x4

    invoke-static {p1, p2, p0, v1, v3}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;II)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->keyguardCoordinatorProvider:Ljavax/inject/Provider;

    const/4 v1, 0x5

    invoke-static {p1, p2, p0, v1, v3}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;II)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->rankingCoordinatorProvider:Ljavax/inject/Provider;

    const/4 v1, 0x6

    invoke-static {p1, p2, p0, v1, v3}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;II)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->appOpsCoordinatorProvider:Ljavax/inject/Provider;

    const/4 v1, 0x7

    invoke-static {p1, p2, p0, v1, v3}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;II)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->deviceProvisionedCoordinatorProvider:Ljavax/inject/Provider;

    const/16 v1, 0x8

    invoke-static {p1, p2, p0, v1, v3}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;II)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->bubbleCoordinatorProvider:Ljavax/inject/Provider;

    const/16 v1, 0x9

    invoke-static {p1, p2, p0, v1, v3}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;II)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->headsUpCoordinatorProvider:Ljavax/inject/Provider;

    const/16 v1, 0xa

    invoke-static {p1, p2, p0, v1, v3}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;II)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->gutsCoordinatorProvider:Ljavax/inject/Provider;

    const/16 v1, 0xb

    invoke-static {p1, p2, p0, v1, v3}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;II)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->conversationCoordinatorProvider:Ljavax/inject/Provider;

    const/16 v1, 0xc

    invoke-static {p1, p2, p0, v1, v3}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;II)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->debugModeCoordinatorProvider:Ljavax/inject/Provider;

    const/16 v1, 0xd

    invoke-static {p1, p2, p0, v1, v3}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;II)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->groupCountCoordinatorProvider:Ljavax/inject/Provider;

    const/16 v1, 0xe

    invoke-static {p1, p2, p0, v1, v3}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;II)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->groupWhenCoordinatorProvider:Ljavax/inject/Provider;

    const/16 v1, 0xf

    invoke-static {p1, p2, p0, v1, v3}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;II)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->mediaCoordinatorProvider:Ljavax/inject/Provider;

    const/16 v1, 0x10

    invoke-static {p1, p2, p0, v1, v3}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;II)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->preparationCoordinatorProvider:Ljavax/inject/Provider;

    const/16 v1, 0x11

    invoke-static {p1, p2, p0, v1, v3}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;II)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->remoteInputCoordinatorProvider:Ljavax/inject/Provider;

    const/16 v1, 0x12

    invoke-static {p1, p2, p0, v1, v3}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;II)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->rowAppearanceCoordinatorProvider:Ljavax/inject/Provider;

    const/16 v1, 0x13

    invoke-static {p1, p2, p0, v1, v3}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;II)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->stackCoordinatorProvider:Ljavax/inject/Provider;

    const/16 v1, 0x14

    invoke-static {p1, p2, p0, v1, v3}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;II)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->smartspaceDedupingCoordinatorProvider:Ljavax/inject/Provider;

    const/16 v1, 0x15

    invoke-static {p1, p2, p0, v1, v3}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;II)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->viewConfigCoordinatorProvider:Ljavax/inject/Provider;

    const/16 v1, 0x16

    invoke-static {p1, p2, p0, v1, v2}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;II)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->sensitiveContentCoordinatorImplProvider:Ljavax/inject/Provider;

    const/16 v1, 0x17

    invoke-static {p1, p2, p0, v1, v4}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;II)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->dismissibilityCoordinatorProvider:Ljavax/inject/Provider;

    const/4 v1, 0x0

    invoke-static {p1, p2, p0, v1, v0}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$$ExternalSyntheticOutline0;->m(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;II)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CoordinatorsSubcomponentImpl;->notifCoordinatorsImplProvider:Ljavax/inject/Provider;

    return-void
.end method
