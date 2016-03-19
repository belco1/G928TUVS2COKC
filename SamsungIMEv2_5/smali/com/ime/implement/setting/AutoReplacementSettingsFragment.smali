.class public Lcom/ime/implement/setting/AutoReplacementSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "AutoReplacementSettingsFragment.java"


# instance fields
.field private actionBarSwitch:Landroid/widget/Switch;

.field private actionBarSwitchClickListener:Landroid/view/View$OnClickListener;

.field private actionBarSwitchTitle:Landroid/widget/TextView;

.field private isChecked:Z

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mIsShowDialogByHomeKey:Z

.field protected mRepository:Lcom/ime/framework/repository/Repository;

.field private mSPref:Landroid/content/SharedPreferences;

.field private mainView:Landroid/view/View;

.field private misTablet:Z

.field onAutoReplacementPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private onAutoReplacementSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private settingActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->isChecked:Z

    new-instance v0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/AutoReplacementSettingsFragment$2;-><init>(Lcom/ime/implement/setting/AutoReplacementSettingsFragment;)V

    iput-object v0, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->onAutoReplacementSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/AutoReplacementSettingsFragment$3;-><init>(Lcom/ime/implement/setting/AutoReplacementSettingsFragment;)V

    iput-object v0, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->actionBarSwitchClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment$4;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/AutoReplacementSettingsFragment$4;-><init>(Lcom/ime/implement/setting/AutoReplacementSettingsFragment;)V

    iput-object v0, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->onAutoReplacementPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/ime/implement/setting/AutoReplacementSettingsFragment;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ime/implement/setting/AutoReplacementSettingsFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->createLanguageList(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/ime/implement/setting/AutoReplacementSettingsFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->actionBarSwitchTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ime/implement/setting/AutoReplacementSettingsFragment;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ime/implement/setting/AutoReplacementSettingsFragment;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->actionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ime/implement/setting/AutoReplacementSettingsFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private areAllLanguagesDisable()Z
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    const-string v7, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_3

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    instance-of v6, v6, Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_2

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-nez v6, :cond_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method private createLanguageList(Z)V
    .locals 19

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    const/4 v10, 0x0

    new-instance v1, Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-direct {v1, v15}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v15

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v14

    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v13

    const/4 v5, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x0

    invoke-virtual {v12}, Landroid/preference/PreferenceScreen;->removeAll()V

    const v15, 0x7f030083

    invoke-virtual {v1, v15}, Landroid/preference/Preference;->setLayoutResource(I)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v15

    const-string v16, "CscFeature_Sip_ApplyAutoCorrectionPatent"

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    const v15, 0x7f0d0194

    invoke-virtual {v1, v15}, Landroid/preference/Preference;->setSummary(I)V

    :goto_1
    invoke-virtual {v12, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    const/4 v4, 0x0

    :goto_2
    array-length v15, v14

    if-ge v4, v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    aget-object v16, v14, v4

    invoke-interface/range {v15 .. v16}, Lcom/ime/framework/common/InputManager;->isAutoReplacementSupportedLanguage(Lcom/ime/framework/common/Language;)Z

    move-result v15

    if-nez v15, :cond_3

    :cond_0
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v14

    goto :goto_0

    :cond_2
    const v15, 0x7f0d0193

    invoke-virtual {v1, v15}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    :cond_3
    const-string v15, "0x%08x"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v18, v14, v4

    invoke-virtual/range {v18 .. v18}, Lcom/ime/framework/common/Language;->getId()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v15, v8, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    aget-object v16, v14, v4

    invoke-interface/range {v15 .. v16}, Lcom/ime/framework/common/InputManager;->makeAutoReplacePrefKey(Lcom/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_6

    const/4 v5, 0x0

    aget-object v15, v14, v4

    invoke-virtual {v15}, Lcom/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v15

    const-string v16, "ko"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v15, v9, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :goto_4
    if-eqz v10, :cond_4

    invoke-virtual {v12, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    new-instance v10, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-direct {v10, v15}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    aget-object v15, v14, v4

    invoke-virtual {v15}, Lcom/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/preference/SwitchPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-virtual {v12, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    aget-object v15, v14, v4

    invoke-virtual {v15}, Lcom/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v15

    const-string v16, "ko"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->onAutoReplacementPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v10, v15}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v15, v9, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_4

    :cond_6
    if-eqz v10, :cond_0

    invoke-virtual {v12, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    :cond_7
    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/ime/framework/common/Language;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v15, v11}, Lcom/ime/framework/common/InputManager;->isAutoReplacementSupportedLanguage(Lcom/ime/framework/common/Language;)Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v15, v11}, Lcom/ime/framework/common/InputManager;->makeAutoReplacePrefKey(Lcom/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    if-nez v10, :cond_9

    new-instance v10, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-direct {v10, v15}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    const-string v15, "ko"

    invoke-virtual {v11}, Lcom/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    if-nez v7, :cond_c

    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v15, v9, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :goto_5
    if-eqz v7, :cond_9

    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/preference/SwitchPreference;->setDefaultValue(Ljava/lang/Object;)V

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    invoke-virtual {v12, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {v11}, Lcom/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v15

    const-string v16, "ko"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    if-eqz v10, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->onAutoReplacementPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v10, v15}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-virtual {v11}, Lcom/ime/framework/common/Language;->getId()I

    move-result v16

    invoke-interface/range {v15 .. v16}, Lcom/ime/framework/common/InputManager;->isLatinLanguageID(I)Z

    move-result v15

    if-eqz v15, :cond_a

    if-nez v7, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/ime/framework/common/InputManager;->getDefaultEnglishLanguage()Lcom/ime/framework/common/Language;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v15, v3}, Lcom/ime/framework/common/InputManager;->makeAutoReplacePrefKey(Lcom/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    if-nez v10, :cond_b

    new-instance v10, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-direct {v10, v15}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v15, v9, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/preference/SwitchPreference;->setDefaultValue(Ljava/lang/Object;)V

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    invoke-virtual {v12, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_b
    return-void

    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v15, v9, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto/16 :goto_5
.end method

.method private setActionBarButton()V
    .locals 3

    iget-object v1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->mainView:Landroid/view/View;

    const v2, 0x7f1000cd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->actionBarSwitchClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->mainView:Landroid/view/View;

    const v2, 0x7f1000ce

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->actionBarSwitchTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->mainView:Landroid/view/View;

    const v2, 0x7f1000cf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->actionBarSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->actionBarSwitch:Landroid/widget/Switch;

    iget-boolean v2, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->isChecked:Z

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-boolean v1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->isChecked:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->actionBarSwitchTitle:Landroid/widget/TextView;

    const v2, 0x7f0d0029

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->actionBarSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->onAutoReplacementSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->actionBarSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/ime/implement/setting/AutoReplacementSettingsFragment$1;

    invoke-direct {v2, p0}, Lcom/ime/implement/setting/AutoReplacementSettingsFragment$1;-><init>(Lcom/ime/implement/setting/AutoReplacementSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->actionBarSwitchTitle:Landroid/widget/TextView;

    const v2, 0x7f0d002a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method protected exitAutoRelacementSettings()V
    .locals 3

    invoke-direct {p0}, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->areAllLanguagesDisable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    const v1, 0x7f0d0195

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected isShowDialogByHomeKey()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->mIsShowDialogByHomeKey:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/16 v5, 0x400

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SamsungIME"

    const-string v2, "[ARS] onCreate() - mInputManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->mRepository:Lcom/ime/framework/repository/Repository;

    iget-object v1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->mRepository:Lcom/ime/framework/repository/Repository;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v2, "TABLET_MODE"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->misTablet:Z

    :cond_2
    iget-boolean v1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->misTablet:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Landroid/view/Window;->setFlags(II)V

    :cond_3
    iget-object v1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    const-string v2, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->isChecked:Z

    const v1, 0x7f030069

    invoke-virtual {p0, v1}, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->addPreferencesFromResource(I)V

    iget-object v1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v1, 0x7f0d0192

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    invoke-virtual {p0, v4}, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->setHasOptionsMenu(Z)V

    :cond_4
    iget-boolean v1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->isChecked:Z

    invoke-direct {p0, v1}, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->createLanguageList(Z)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f030087

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->mainView:Landroid/view/View;

    invoke-direct {p0}, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->setActionBarButton()V

    iget-object v0, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->mainView:Landroid/view/View;

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iput-boolean v0, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->mIsShowDialogByHomeKey:Z

    invoke-virtual {p0}, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->exitAutoRelacementSettings()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    return-void
.end method

.method protected setShowDialogByHomeKey(Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->mIsShowDialogByHomeKey:Z

    return p1
.end method
