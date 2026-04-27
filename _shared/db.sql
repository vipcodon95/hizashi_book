-- public.alembic_version definition

-- Drop table

-- DROP TABLE public.alembic_version;

CREATE TABLE public.alembic_version (
	version_num varchar(32) NOT NULL,
	CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num)
);


-- public.api_request_logs definition

-- Drop table

-- DROP TABLE public.api_request_logs;

CREATE TABLE public.api_request_logs (
	id serial4 NOT NULL,
	user_id text NULL,
	"method" varchar(10) NOT NULL,
	"path" text NOT NULL,
	status_code int4 NOT NULL,
	response_time_ms int4 NOT NULL,
	ip_address text NULL,
	user_agent text NULL,
	device_type varchar(20) NULL,
	tenant_id text NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	CONSTRAINT pk_api_request_logs PRIMARY KEY (id)
);
CREATE INDEX ix_api_request_logs_created_at ON public.api_request_logs USING btree (created_at);
CREATE INDEX ix_api_request_logs_path_method ON public.api_request_logs USING btree (path, method);
CREATE INDEX ix_api_request_logs_status_code ON public.api_request_logs USING btree (status_code);
CREATE INDEX ix_api_request_logs_user_created ON public.api_request_logs USING btree (user_id, created_at);
CREATE INDEX ix_api_request_logs_user_id ON public.api_request_logs USING btree (user_id);


-- public.app_versions definition

-- Drop table

-- DROP TABLE public.app_versions;

CREATE TABLE public.app_versions (
	id serial4 NOT NULL,
	platform varchar(20) NOT NULL,
	min_required_version varchar(20) NOT NULL,
	created_at timestamp NOT NULL,
	updated_at timestamp NULL,
	CONSTRAINT pk_app_versions PRIMARY KEY (id)
);


-- public.audiobooks definition

-- Drop table

-- DROP TABLE public.audiobooks;

CREATE TABLE public.audiobooks (
	id serial4 NOT NULL,
	slug varchar(200) NOT NULL,
	title text NOT NULL,
	title_vi text NULL,
	author text NULL,
	author_vi text NULL,
	category varchar(50) NULL,
	jlpt_level varchar(10) NULL,
	difficulty int4 DEFAULT 3 NULL,
	description text NULL,
	cover_image_url varchar(500) NULL,
	total_paragraphs int4 DEFAULT 0 NULL,
	total_duration_ms int4 DEFAULT 0 NULL,
	tts_voice varchar(100) NULL,
	audio_format varchar(10) DEFAULT 'mp3'::character varying NULL,
	processing_status varchar(20) DEFAULT 'pending'::character varying NULL,
	tags json NULL,
	"source" text NULL,
	source_url varchar(500) NULL,
	is_system bool DEFAULT true NULL,
	user_id text NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	total_sentences int4 DEFAULT 0 NULL,
	total_sections int4 DEFAULT 0 NULL,
	is_free_override bool DEFAULT false NULL,
	free_preview_count int4 DEFAULT 12 NULL,
	CONSTRAINT pk_audiobooks PRIMARY KEY (id)
);
CREATE INDEX ix_audiobooks_category ON public.audiobooks USING btree (category);
CREATE INDEX ix_audiobooks_jlpt_level ON public.audiobooks USING btree (jlpt_level);
CREATE UNIQUE INDEX ix_audiobooks_slug ON public.audiobooks USING btree (slug);


-- public.audios definition

-- Drop table

-- DROP TABLE public.audios;

CREATE TABLE public.audios (
	id serial4 NOT NULL,
	audio_id varchar(200) NOT NULL,
	lemma_form text NULL,
	kana_reading text NOT NULL,
	japanese_text text NOT NULL,
	romaji varchar(255) NOT NULL,
	meaning_vi text NULL,
	variant varchar(50) NULL,
	variant_description text NULL,
	file_path varchar(500) NULL,
	category varchar(50) NULL,
	voice_gender varchar(10) NULL,
	mora_count int4 NULL,
	mora_list json NULL,
	mora_breakdown text NULL,
	pitch_pattern varchar(50) NULL,
	pitch_sequence json NULL,
	pitch_accent_type varchar(20) NULL,
	pitch_drop_position int4 NULL,
	unidic_atype int4 NULL,
	mora_timestamps json NULL,
	duration_ms int4 NULL,
	file_size_bytes int4 NULL,
	tts_engine varchar(50) NULL,
	is_active bool DEFAULT true NULL,
	created_at timestamp DEFAULT now() NULL,
	updated_at timestamp NULL,
	CONSTRAINT pk_audios PRIMARY KEY (id)
);
CREATE UNIQUE INDEX ix_audios_audio_id ON public.audios USING btree (audio_id);
CREATE INDEX ix_audios_category ON public.audios USING btree (category);
CREATE INDEX ix_audios_category_voice ON public.audios USING btree (category, voice_gender);
CREATE INDEX ix_audios_id ON public.audios USING btree (id);
CREATE INDEX ix_audios_lemma_form ON public.audios USING btree (lemma_form);
CREATE INDEX ix_audios_romaji ON public.audios USING btree (romaji);
CREATE INDEX ix_audios_romaji_variant ON public.audios USING btree (romaji, variant);
CREATE INDEX ix_audios_variant ON public.audios USING btree (variant);


-- public.blog_categories definition

-- Drop table

-- DROP TABLE public.blog_categories;

CREATE TABLE public.blog_categories (
	id serial4 NOT NULL,
	"name" varchar(255) NOT NULL,
	description text NULL,
	slug varchar(255) NOT NULL,
	order_index int4 DEFAULT 0 NOT NULL,
	CONSTRAINT pk_blog_categories PRIMARY KEY (id),
	CONSTRAINT uq_blog_categories_slug UNIQUE (slug)
);


-- public.blog_notification_settings definition

-- Drop table

-- DROP TABLE public.blog_notification_settings;

CREATE TABLE public.blog_notification_settings (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	comment_enabled bool DEFAULT true NOT NULL,
	reply_enabled bool DEFAULT true NOT NULL,
	quote_enabled bool DEFAULT true NOT NULL,
	reaction_enabled bool DEFAULT true NOT NULL,
	poll_vote_enabled bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp DEFAULT now() NOT NULL,
	CONSTRAINT pk_blog_notification_settings PRIMARY KEY (id)
);
CREATE UNIQUE INDEX ix_blog_notification_settings_user_id ON public.blog_notification_settings USING btree (user_id);


-- public.blog_notifications definition

-- Drop table

-- DROP TABLE public.blog_notifications;

CREATE TABLE public.blog_notifications (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	"type" varchar(50) NOT NULL,
	post_id int4 NOT NULL,
	comment_id int4 NULL,
	actor_id text NOT NULL,
	actor_name varchar(255) NULL,
	"content" text NULL,
	count int4 DEFAULT 1 NOT NULL,
	is_read bool DEFAULT false NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp DEFAULT now() NOT NULL,
	CONSTRAINT pk_blog_notifications PRIMARY KEY (id)
);
CREATE INDEX ix_blog_notifications_user_id ON public.blog_notifications USING btree (user_id);


-- public.blog_user_access_devices definition

-- Drop table

-- DROP TABLE public.blog_user_access_devices;

CREATE TABLE public.blog_user_access_devices (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	device_identifier varchar(255) NOT NULL,
	ip_address varchar(45) NULL,
	user_agent text NULL,
	os_info varchar(100) NULL,
	device_type varchar(50) NULL,
	last_accessed timestamp DEFAULT now() NOT NULL,
	first_accessed timestamp DEFAULT now() NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	CONSTRAINT pk_blog_user_access_devices PRIMARY KEY (id),
	CONSTRAINT unique_user_device UNIQUE (user_id, device_identifier)
);


-- public.category_performance definition

-- Drop table

-- DROP TABLE public.category_performance;

CREATE TABLE public.category_performance (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	content_type text NOT NULL,
	"level" text NULL,
	total_cards int4 NULL,
	mastered_cards int4 NULL,
	learning_cards int4 NULL,
	difficult_cards int4 NULL,
	average_retention float8 NULL,
	last_updated timestamp NULL,
	tenant_id text NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	CONSTRAINT pk_category_performance PRIMARY KEY (id)
);


-- public.classes definition

-- Drop table

-- DROP TABLE public.classes;

CREATE TABLE public.classes (
	class_id serial4 NOT NULL,
	class_code varchar(50) NOT NULL,
	class_name varchar(200) NOT NULL,
	description text NULL,
	teacher_id text NOT NULL,
	status varchar(20) NOT NULL,
	max_students int4 DEFAULT 30 NOT NULL,
	current_students int4 DEFAULT 0 NOT NULL,
	start_date date NULL,
	end_date date NULL,
	allow_self_enrollment bool DEFAULT false NOT NULL,
	require_approval bool DEFAULT false NOT NULL,
	is_public bool DEFAULT false NOT NULL,
	cover_image_url text NULL,
	syllabus text NULL,
	tenant_id int4 NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamptz NULL,
	updated_by text NULL,
	CONSTRAINT pk_classes PRIMARY KEY (class_id)
);
CREATE UNIQUE INDEX ix_classes_class_code ON public.classes USING btree (class_code);
CREATE INDEX ix_classes_class_id ON public.classes USING btree (class_id);
CREATE INDEX ix_classes_end_date ON public.classes USING btree (end_date);
CREATE INDEX ix_classes_is_deleted ON public.classes USING btree (is_deleted);
CREATE INDEX ix_classes_start_date ON public.classes USING btree (start_date);
CREATE INDEX ix_classes_status ON public.classes USING btree (status);
CREATE INDEX ix_classes_teacher_id ON public.classes USING btree (teacher_id);


-- public.content_questions definition

-- Drop table

-- DROP TABLE public.content_questions;

CREATE TABLE public.content_questions (
	id serial4 NOT NULL,
	content_type text NOT NULL,
	content_id int4 NOT NULL,
	question_id int4 NOT NULL,
	order_index int4 DEFAULT 0 NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	CONSTRAINT pk_content_questions PRIMARY KEY (id)
);
CREATE INDEX idx_cq_content ON public.content_questions USING btree (content_type, content_id) WHERE (is_deleted = false);
CREATE INDEX idx_cq_question ON public.content_questions USING btree (question_id) WHERE (is_deleted = false);
CREATE UNIQUE INDEX idx_cq_unique ON public.content_questions USING btree (content_type, content_id, question_id) WHERE (is_deleted = false);
CREATE INDEX ix_content_questions_id ON public.content_questions USING btree (id);


-- public.content_sets definition

-- Drop table

-- DROP TABLE public.content_sets;

CREATE TABLE public.content_sets (
	set_id serial4 NOT NULL,
	set_name varchar(200) NOT NULL,
	set_code varchar(50) NULL,
	description text NULL,
	"level" varchar(10) NULL,
	content_type varchar(50) NOT NULL,
	created_by text NOT NULL,
	is_public bool DEFAULT false NOT NULL,
	is_template bool DEFAULT false NOT NULL,
	total_items int4 DEFAULT 0 NOT NULL,
	estimated_duration int4 NULL,
	tags text NULL,
	cover_image_url text NULL,
	tenant_id int4 NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	created_by_user text NULL,
	updated_at timestamptz NULL,
	updated_by text NULL,
	course_id int4 NULL,
	CONSTRAINT pk_content_sets PRIMARY KEY (set_id)
);
CREATE INDEX ix_content_sets_content_type ON public.content_sets USING btree (content_type);
CREATE INDEX ix_content_sets_course_id ON public.content_sets USING btree (course_id);
CREATE INDEX ix_content_sets_created_by ON public.content_sets USING btree (created_by);
CREATE INDEX ix_content_sets_is_deleted ON public.content_sets USING btree (is_deleted);
CREATE INDEX ix_content_sets_level ON public.content_sets USING btree (level);
CREATE UNIQUE INDEX ix_content_sets_set_code ON public.content_sets USING btree (set_code);
CREATE INDEX ix_content_sets_set_id ON public.content_sets USING btree (set_id);


-- public.conversation_lines definition

-- Drop table

-- DROP TABLE public.conversation_lines;

CREATE TABLE public.conversation_lines (
	id serial4 NOT NULL,
	conversation_id int4 NULL,
	speaker text NOT NULL,
	speaker_gender text NULL,
	speaker_role text NULL,
	sentence text NOT NULL,
	furigana text NULL,
	"translation" text NULL,
	audio_jp text NULL,
	audio_vi text NULL,
	notes text NULL,
	notes_jp text NULL,
	politeness text NULL,
	order_index int4 DEFAULT 0 NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	grammar_analysis text NULL,
	CONSTRAINT pk_conversation_lines PRIMARY KEY (id)
);
CREATE INDEX ix_conversation_lines_conversation_id ON public.conversation_lines USING btree (conversation_id);
CREATE INDEX ix_conversation_lines_order ON public.conversation_lines USING btree (conversation_id, order_index);


-- public.conversations definition

-- Drop table

-- DROP TABLE public.conversations;

CREATE TABLE public.conversations (
	id serial4 NOT NULL,
	user_id text NULL,
	is_single_line bool DEFAULT false NOT NULL,
	content_type text NULL,
	content_id text NULL,
	in_table text NULL,
	"level" text NULL,
	title text NULL,
	title_jp text NULL,
	situation text NULL,
	situation_jp text NULL,
	sentence text NULL,
	"translation" text NULL,
	furigana text NULL,
	full_audio_jp text NULL,
	full_audio_vi text NULL,
	order_index int4 DEFAULT 0 NULL,
	is_system bool DEFAULT false NOT NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	CONSTRAINT pk_conversations PRIMARY KEY (id)
);
CREATE INDEX ix_conversations_content ON public.conversations USING btree (content_type, content_id);
CREATE INDEX ix_conversations_user_id ON public.conversations USING btree (user_id);


-- public.curricula definition

-- Drop table

-- DROP TABLE public.curricula;

CREATE TABLE public.curricula (
	id serial4 NOT NULL,
	"level" text NULL,
	"type" text NULL,
	title text NULL,
	introduction text NULL,
	introduction_jp text NULL,
	total_items text NULL,
	progress text NULL,
	last_accessed timestamp NULL,
	tenant_id text NULL,
	is_deleted bool NOT NULL,
	is_active bool NOT NULL,
	created_at timestamp NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	user_id varchar NULL,
	published_at timestamp NULL,
	status text NULL,
	category text NULL,
	is_system bool DEFAULT false NOT NULL,
	is_public bool DEFAULT false NOT NULL,
	is_free_override bool DEFAULT false NOT NULL,
	free_preview_count int4 DEFAULT 3 NOT NULL,
	CONSTRAINT pk_curricula PRIMARY KEY (id)
);
CREATE INDEX ix_curricula_is_system_level ON public.curricula USING btree (is_system, level) WHERE ((is_deleted = false) AND (is_active = true));
CREATE INDEX ix_curricula_user_updated ON public.curricula USING btree (user_id, updated_at) WHERE ((is_deleted = false) AND (is_active = true));


-- public.custom_articles definition

-- Drop table

-- DROP TABLE public.custom_articles;

CREATE TABLE public.custom_articles (
	id serial4 NOT NULL,
	user_id text NULL,
	title text NOT NULL,
	slug text NULL,
	excerpt text NULL,
	"content" text NOT NULL,
	content_format text DEFAULT 'html'::text NULL,
	category text NULL,
	jlpt_level text NULL,
	tags text NULL,
	thumbnail_url text NULL,
	reading_time_minutes int4 DEFAULT 0 NULL,
	order_index int4 DEFAULT 0 NOT NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	CONSTRAINT pk_custom_articles PRIMARY KEY (id)
);


-- public.custom_curricula definition

-- Drop table

-- DROP TABLE public.custom_curricula;

CREATE TABLE public.custom_curricula (
	id serial4 NOT NULL,
	"level" text NULL,
	"type" text NULL,
	title text NULL,
	introduction text NULL,
	introduction_jp text NULL,
	total_items text NULL,
	progress text NULL,
	last_accessed timestamp NULL,
	tenant_id text NULL,
	is_deleted bool NOT NULL,
	is_active bool NOT NULL,
	created_at timestamp NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	user_id varchar NULL,
	published_at timestamp NULL,
	status text NULL,
	CONSTRAINT pk_custom_curricula PRIMARY KEY (id)
);


-- public.custom_examples definition

-- Drop table

-- DROP TABLE public.custom_examples;

CREATE TABLE public.custom_examples (
	id serial4 NOT NULL,
	user_id text NULL,
	is_sentence bool DEFAULT false NOT NULL,
	word text NULL,
	reading text NULL,
	meaning text NULL,
	sentence text NULL,
	sentence_hira text NULL,
	"translation" text NULL,
	explanation text NULL,
	politeness text NULL,
	question_id text NULL,
	is_favorite bool DEFAULT false NOT NULL,
	difficulty int4 DEFAULT 0 NOT NULL,
	order_index int4 DEFAULT 0 NOT NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	content_type text NOT NULL,
	content_id text NOT NULL,
	CONSTRAINT pk_custom_examples PRIMARY KEY (id)
);


-- public.custom_grammar definition

-- Drop table

-- DROP TABLE public.custom_grammar;

CREATE TABLE public.custom_grammar (
	id serial4 NOT NULL,
	user_id text NULL,
	"level" text NULL,
	title text NOT NULL,
	pattern text NOT NULL,
	meaning text NOT NULL,
	explanation text NULL,
	usage_note text NULL,
	is_favorite bool DEFAULT false NOT NULL,
	difficulty int4 DEFAULT 1 NOT NULL,
	tags text NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	order_index int4 DEFAULT 0 NOT NULL,
	CONSTRAINT pk_custom_grammar PRIMARY KEY (id)
);


-- public.custom_kanji definition

-- Drop table

-- DROP TABLE public.custom_kanji;

CREATE TABLE public.custom_kanji (
	id serial4 NOT NULL,
	user_id text NULL,
	"level" text NULL,
	on_yomi text NULL,
	kun_yomi text NULL,
	meaning text NOT NULL,
	strokes int4 NULL,
	radical text NULL,
	radical_info text NULL,
	gakunen text NULL,
	svg text NULL,
	image_link text NULL,
	poem text NULL,
	is_favorite bool DEFAULT false NOT NULL,
	difficulty int4 DEFAULT 1 NOT NULL,
	tags text NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	"type" text NULL,
	lemma text NOT NULL,
	han_viet text NULL,
	explanation text NULL,
	order_index int4 DEFAULT 0 NOT NULL,
	CONSTRAINT pk_custom_kanji PRIMARY KEY (id)
);


-- public.custom_sense definition

-- Drop table

-- DROP TABLE public.custom_sense;

CREATE TABLE public.custom_sense (
	id serial4 NOT NULL,
	old_wid int4 NULL,
	wid int4 NULL,
	w_category text NULL,
	meaning text NULL,
	explanation text NULL,
	jp_explanation text NULL,
	example text NULL,
	example_meaning text NULL,
	lang varchar(3) NULL,
	furigana text NULL,
	user_id text NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	CONSTRAINT pk_custom_sense PRIMARY KEY (id)
);
CREATE INDEX custom_sense_wid_w_category_idx ON public.custom_sense USING btree (wid, w_category);


-- public.custom_vocabulary definition

-- Drop table

-- DROP TABLE public.custom_vocabulary;

CREATE TABLE public.custom_vocabulary (
	id serial4 NOT NULL,
	user_id text NULL,
	"level" text NULL,
	meaning text NOT NULL,
	meaning_ja text NULL,
	explanation text NULL,
	kanji_count int4 DEFAULT 0 NOT NULL,
	audio_link text NULL,
	image_link text NULL,
	is_favorite bool DEFAULT false NOT NULL,
	difficulty int4 DEFAULT 1 NOT NULL,
	tags text NULL,
	order_index int4 DEFAULT 0 NOT NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	pos text NULL,
	"type" text NULL,
	lemma text NOT NULL,
	kana text NULL,
	han_viet text NULL,
	CONSTRAINT pk_custom_vocabulary PRIMARY KEY (id)
);
CREATE INDEX ix_custom_vocabulary_is_favorite ON public.custom_vocabulary USING btree (is_favorite);


-- public.documents definition

-- Drop table

-- DROP TABLE public.documents;

CREATE TABLE public.documents (
	id serial4 NOT NULL,
	title varchar(300) NOT NULL,
	title_jp varchar(300) NULL,
	description text NULL,
	file_path varchar(500) NOT NULL,
	file_type varchar(20) NOT NULL,
	page_count int4 NULL,
	"level" varchar(10) NULL,
	category varchar(50) NULL,
	thumbnail_url varchar(500) NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	CONSTRAINT pk_documents PRIMARY KEY (id)
);
CREATE INDEX ix_documents_id ON public.documents USING btree (id);


-- public.examples definition

-- Drop table

-- DROP TABLE public.examples;

CREATE TABLE public.examples (
	id serial4 NOT NULL,
	user_id text NULL,
	is_sentence bool DEFAULT false NOT NULL,
	word text NULL,
	reading text NULL,
	meaning text NULL,
	sentence text NULL,
	sentence_hira text NULL,
	"translation" text NULL,
	explanation text NULL,
	politeness text NULL,
	question_id text NULL,
	is_favorite bool DEFAULT false NOT NULL,
	difficulty int4 DEFAULT 0 NOT NULL,
	order_index int4 DEFAULT 0 NOT NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	content_type text NOT NULL,
	content_id text NOT NULL,
	audio_url text NULL,
	audio_data jsonb NULL,
	CONSTRAINT pk_examples PRIMARY KEY (id)
);
CREATE INDEX idx_examples_content_lookup ON public.examples USING btree (content_type, content_id) WHERE (is_deleted = false);


-- public.flashcards definition

-- Drop table

-- DROP TABLE public.flashcards;

CREATE TABLE public.flashcards (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	content_type text NULL,
	content_id text NULL,
	"level" text NULL,
	word text NULL,
	han_viet text NULL,
	kana text NULL,
	word_explanation text NULL,
	sentence text NULL,
	sentence_translation text NULL,
	general_explanation text NULL,
	stability float8 DEFAULT 0.4 NOT NULL,
	difficulty float8 DEFAULT 5.0 NOT NULL,
	retrievability float8 DEFAULT 0.0 NOT NULL,
	review_count int4 DEFAULT 0 NOT NULL,
	reps int4 DEFAULT 0 NOT NULL,
	lapses int4 DEFAULT 0 NOT NULL,
	elapsed_days int4 DEFAULT 0 NOT NULL,
	scheduled_days int4 DEFAULT 0 NOT NULL,
	state varchar(20) DEFAULT 'New'::character varying NOT NULL,
	is_favorite bool NULL,
	is_custom bool NULL,
	is_marked_difficult bool NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NULL,
	is_active bool DEFAULT true NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp NULL,
	created_by text NULL,
	updated_by text NULL,
	meaning text NULL,
	due timestamp NULL,
	last_review timestamp NULL,
	step int4 DEFAULT 0 NOT NULL,
	folder_id text NULL,
	image_link text NULL,
	audio_data jsonb NULL,
	CONSTRAINT pk_flashcards PRIMARY KEY (id)
);
CREATE INDEX ix_flashcards_user_active ON public.flashcards USING btree (user_id, is_active, is_deleted);
CREATE INDEX ix_flashcards_user_due ON public.flashcards USING btree (user_id, due, state);

-- Table Triggers

create trigger trg_flashcards_status_change after
update
    of is_active,
    is_deleted on
    public.flashcards for each row execute function sync_flashcards_list_card_count_on_flashcard_change();


-- public.flashcards_list definition

-- Drop table

-- DROP TABLE public.flashcards_list;

CREATE TABLE public.flashcards_list (
	id serial4 NOT NULL,
	user_id text NULL,
	"name" text NOT NULL,
	description text NULL,
	folder_id text NULL,
	is_custom bool DEFAULT false NOT NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	is_public bool DEFAULT false NOT NULL,
	public_id text NULL,
	is_default bool DEFAULT false NOT NULL,
	is_favorite bool DEFAULT false NOT NULL,
	set_type text DEFAULT 'normal'::text NOT NULL,
	"level" text NULL,
	is_system bool DEFAULT false NULL,
	is_sample bool DEFAULT false NULL,
	category text NULL,
	card_count int4 DEFAULT 0 NOT NULL,
	CONSTRAINT pk_flashcards_list PRIMARY KEY (id)
);
CREATE INDEX ix_flashcards_list_category ON public.flashcards_list USING btree (category);


-- public.folders definition

-- Drop table

-- DROP TABLE public.folders;

CREATE TABLE public.folders (
	id serial4 NOT NULL,
	folder_parent int4 NULL,
	user_id text NULL,
	"name" text NOT NULL,
	description text NULL,
	parent_id int4 NULL,
	is_custom bool DEFAULT false NOT NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	folder_type text NULL,
	is_default bool DEFAULT false NOT NULL,
	CONSTRAINT pk_folders PRIMARY KEY (id)
);


-- public.game_sessions definition

-- Drop table

-- DROP TABLE public.game_sessions;

CREATE TABLE public.game_sessions (
	id varchar(36) NOT NULL,
	user_id varchar(255) NOT NULL,
	game_code varchar(50) NOT NULL,
	"level" int4 NOT NULL,
	jlpt_level varchar(10) NULL,
	"rows" int4 NOT NULL,
	cols int4 NOT NULL,
	seed int4 NULL,
	grid jsonb NOT NULL,
	matched_pairs int4 DEFAULT 0 NOT NULL,
	total_pairs int4 NOT NULL,
	moves int4 DEFAULT 0 NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp DEFAULT now() NOT NULL,
	expires_at timestamp NOT NULL,
	completed_at timestamp NULL,
	CONSTRAINT pk_game_sessions PRIMARY KEY (id)
);
CREATE INDEX idx_expired_sessions ON public.game_sessions USING btree (expires_at);
CREATE INDEX idx_user_active_sessions ON public.game_sessions USING btree (user_id, completed_at);
CREATE INDEX ix_game_sessions_game_code ON public.game_sessions USING btree (game_code);
CREATE INDEX ix_game_sessions_user_id ON public.game_sessions USING btree (user_id);


-- public.games definition

-- Drop table

-- DROP TABLE public.games;

CREATE TABLE public.games (
	id serial4 NOT NULL,
	game_code varchar(50) NOT NULL,
	"name" varchar(100) NOT NULL,
	category varchar(50) NULL,
	description text NULL,
	CONSTRAINT pk_games PRIMARY KEY (id)
);
CREATE UNIQUE INDEX ix_games_game_code ON public.games USING btree (game_code);


-- public.grammar definition

-- Drop table

-- DROP TABLE public.grammar;

CREATE TABLE public.grammar (
	id serial4 NOT NULL,
	user_id text NULL,
	"level" text NULL,
	title text NOT NULL,
	pattern text NOT NULL,
	meaning text NOT NULL,
	explanation text NULL,
	usage_note text NULL,
	is_favorite bool DEFAULT false NOT NULL,
	difficulty int4 DEFAULT 1 NOT NULL,
	tags text NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	is_system bool DEFAULT false NOT NULL,
	note text NULL,
	order_index int4 DEFAULT 0 NOT NULL,
	CONSTRAINT pk_grammar PRIMARY KEY (id)
);


-- public.grammar_analysis_cache definition

-- Drop table

-- DROP TABLE public.grammar_analysis_cache;

CREATE TABLE public.grammar_analysis_cache (
	id serial4 NOT NULL,
	text_hash varchar(64) NOT NULL,
	input_text text NOT NULL,
	"result" jsonb NOT NULL,
	analyzer_version varchar(20) NOT NULL,
	access_count int4 DEFAULT 1 NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	last_accessed_at timestamp DEFAULT now() NOT NULL,
	CONSTRAINT pk_grammar_analysis_cache PRIMARY KEY (id)
);
CREATE INDEX idx_grammar_cache_created ON public.grammar_analysis_cache USING btree (created_at);
CREATE INDEX idx_grammar_cache_hash ON public.grammar_analysis_cache USING btree (text_hash);
CREATE UNIQUE INDEX ix_grammar_analysis_cache_text_hash ON public.grammar_analysis_cache USING btree (text_hash);


-- public.images definition

-- Drop table

-- DROP TABLE public.images;

CREATE TABLE public.images (
	id serial4 NOT NULL,
	image_id varchar(200) NOT NULL,
	file_path varchar(500) NOT NULL,
	format varchar(10) NULL,
	width int4 NULL,
	height int4 NULL,
	file_size_bytes int4 NULL,
	alt_text_vi text NULL,
	alt_text_ja text NULL,
	alt_text_en text NULL,
	category varchar(50) NULL,
	tags json NULL,
	"source" varchar(200) NULL,
	source_url varchar(500) NULL,
	license varchar(50) NULL,
	author varchar(200) NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp NULL,
	CONSTRAINT pk_images PRIMARY KEY (id)
);
CREATE INDEX ix_images_category ON public.images USING btree (category);
CREATE INDEX ix_images_category_tags ON public.images USING btree (category);
CREATE INDEX ix_images_format ON public.images USING btree (format);
CREATE INDEX ix_images_id ON public.images USING btree (id);
CREATE UNIQUE INDEX ix_images_image_id ON public.images USING btree (image_id);


-- public.kanji definition

-- Drop table

-- DROP TABLE public.kanji;

CREATE TABLE public.kanji (
	id int4 NOT NULL,
	user_id text NULL,
	"level" text NULL,
	on_yomi text NULL,
	kun_yomi text NULL,
	meaning text NOT NULL,
	strokes int4 NULL,
	radical text NULL,
	radical_info text NULL,
	gakunen text NULL,
	svg text NULL,
	image_link text NULL,
	poem text NULL,
	is_favorite bool DEFAULT false NOT NULL,
	difficulty int4 DEFAULT 1 NOT NULL,
	tags text NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	"type" text NULL,
	lemma text NOT NULL,
	han_viet text NULL,
	explanation text NULL,
	CONSTRAINT pk_kanji PRIMARY KEY (id)
);


-- public.khoa_cu_achievements definition

-- Drop table

-- DROP TABLE public.khoa_cu_achievements;

CREATE TABLE public.khoa_cu_achievements (
	id serial4 NOT NULL,
	code varchar(50) NOT NULL,
	"name" varchar(100) NOT NULL,
	description text NULL,
	icon_url text NULL,
	condition_type varchar(30) NOT NULL,
	condition_value int4 NOT NULL,
	reward_coins int4 DEFAULT 0 NOT NULL,
	reward_vkd int4 DEFAULT 0 NOT NULL,
	reward_kbd int4 DEFAULT 0 NOT NULL,
	category varchar(20) NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	CONSTRAINT pk_khoa_cu_achievements PRIMARY KEY (id)
);
CREATE INDEX ix_kc_achievement_category ON public.khoa_cu_achievements USING btree (category);
CREATE UNIQUE INDEX ix_khoa_cu_achievements_code ON public.khoa_cu_achievements USING btree (code);


-- public.khoa_cu_exam_configs definition

-- Drop table

-- DROP TABLE public.khoa_cu_exam_configs;

CREATE TABLE public.khoa_cu_exam_configs (
	id serial4 NOT NULL,
	exam_type varchar(20) NOT NULL,
	jlpt_level varchar(5) NOT NULL,
	num_questions int4 NOT NULL,
	duration_minutes int4 NOT NULL,
	hour_vn int4 DEFAULT 20 NOT NULL,
	weekdays varchar(20) NOT NULL,
	interval_weeks int4 DEFAULT 1 NOT NULL,
	max_participants int4 DEFAULT 10000 NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	CONSTRAINT khoa_cu_exam_configs_pkey PRIMARY KEY (id),
	CONSTRAINT uq_exam_config_type_level UNIQUE (exam_type, jlpt_level)
);


-- public.khoa_cu_levels definition

-- Drop table

-- DROP TABLE public.khoa_cu_levels;

CREATE TABLE public.khoa_cu_levels (
	id serial4 NOT NULL,
	code varchar(5) NOT NULL,
	"name" varchar(50) NOT NULL,
	display_order int4 NOT NULL,
	exam_enabled bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	CONSTRAINT khoa_cu_levels_pkey PRIMARY KEY (id),
	CONSTRAINT uq_khoa_cu_levels_code UNIQUE (code)
);


-- public.khoa_cu_quest_templates definition

-- Drop table

-- DROP TABLE public.khoa_cu_quest_templates;

CREATE TABLE public.khoa_cu_quest_templates (
	id serial4 NOT NULL,
	quest_type varchar(20) NOT NULL,
	title varchar(100) NOT NULL,
	description text NULL,
	condition_type varchar(30) NOT NULL,
	condition_value int4 NOT NULL,
	reward_type varchar(10) DEFAULT 'VT'::character varying NOT NULL,
	reward_amount int4 NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	CONSTRAINT pk_khoa_cu_quest_templates PRIMARY KEY (id)
);
CREATE INDEX ix_kc_quest_tpl_active ON public.khoa_cu_quest_templates USING btree (is_active);
CREATE INDEX ix_kc_quest_tpl_type ON public.khoa_cu_quest_templates USING btree (quest_type);


-- public.khoa_cu_seasons definition

-- Drop table

-- DROP TABLE public.khoa_cu_seasons;

CREATE TABLE public.khoa_cu_seasons (
	id serial4 NOT NULL,
	"name" varchar(100) NOT NULL,
	slug varchar(50) NOT NULL,
	status varchar(20) DEFAULT 'draft'::character varying NOT NULL,
	started_at timestamp NOT NULL,
	ended_at timestamp NOT NULL,
	jlpt_date timestamp NULL,
	phase_config jsonb DEFAULT '{}'::jsonb NULL,
	pass_config jsonb DEFAULT '{}'::jsonb NULL,
	shop_config jsonb DEFAULT '{}'::jsonb NULL,
	level_brackets jsonb DEFAULT '[]'::jsonb NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp NULL,
	CONSTRAINT khoa_cu_seasons_pkey PRIMARY KEY (id),
	CONSTRAINT khoa_cu_seasons_slug_key UNIQUE (slug)
);


-- public.lessons definition

-- Drop table

-- DROP TABLE public.lessons;

CREATE TABLE public.lessons (
	lesson_id serial4 NOT NULL,
	lesson_code varchar(50) NULL,
	lesson_name varchar(200) NOT NULL,
	description text NULL,
	lesson_type varchar(50) NOT NULL,
	jlpt_level varchar(10) DEFAULT 'N5'::character varying NOT NULL,
	estimated_duration int4 NULL,
	status varchar(20) DEFAULT 'draft'::character varying NOT NULL,
	created_by text NOT NULL,
	objectives text NULL,
	prerequisites text NULL,
	materials text NULL,
	homework text NULL,
	cover_image_url text NULL,
	notes text NULL,
	is_public bool DEFAULT false NOT NULL,
	is_template bool DEFAULT false NOT NULL,
	tenant_id int4 NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	updated_at timestamptz NULL,
	updated_by text NULL,
	CONSTRAINT pk_lessons PRIMARY KEY (lesson_id)
);
CREATE INDEX ix_lessons_created_by ON public.lessons USING btree (created_by);
CREATE INDEX ix_lessons_is_deleted ON public.lessons USING btree (is_deleted);
CREATE INDEX ix_lessons_jlpt_level ON public.lessons USING btree (jlpt_level);
CREATE UNIQUE INDEX ix_lessons_lesson_code ON public.lessons USING btree (lesson_code);
CREATE INDEX ix_lessons_lesson_id ON public.lessons USING btree (lesson_id);
CREATE INDEX ix_lessons_lesson_type ON public.lessons USING btree (lesson_type);
CREATE INDEX ix_lessons_status ON public.lessons USING btree (status);


-- public.levels definition

-- Drop table

-- DROP TABLE public.levels;

CREATE TABLE public.levels (
	id text NOT NULL,
	user_id text NULL,
	code varchar NOT NULL,
	"name" varchar NOT NULL,
	description text NULL,
	display_order int4 NOT NULL,
	is_system bool NULL,
	metadata text NULL,
	tenant_id text NULL,
	is_deleted bool NOT NULL,
	is_active bool NOT NULL,
	created_at timestamp NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	CONSTRAINT pk_levels PRIMARY KEY (id)
);


-- public.listening_collections definition

-- Drop table

-- DROP TABLE public.listening_collections;

CREATE TABLE public.listening_collections (
	id serial4 NOT NULL,
	user_id text NULL,
	is_system bool DEFAULT false NULL,
	source_type text DEFAULT 'youtube'::text NOT NULL,
	youtube_url text NULL,
	youtube_video_id text NULL,
	file_url text NULL,
	audio_id text NULL,
	title text NULL,
	description text NULL,
	thumbnail_url text NULL,
	duration_seconds int4 NULL,
	script_ja text NULL,
	script_vi text NULL,
	"level" text NULL,
	category text NULL,
	folder_id int4 NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NULL,
	is_active bool DEFAULT true NULL,
	created_at timestamp NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	CONSTRAINT listening_collections_pkey PRIMARY KEY (id)
);


-- public.message_rate_limits definition

-- Drop table

-- DROP TABLE public.message_rate_limits;

CREATE TABLE public.message_rate_limits (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	messages_minute_count int4 NOT NULL,
	messages_minute_window timestamp NULL,
	messages_hour_count int4 NOT NULL,
	messages_hour_window timestamp NULL,
	conversations_minute_count int4 NOT NULL,
	conversations_minute_window timestamp NULL,
	conversations_day_count int4 NOT NULL,
	conversations_day_window timestamp NULL,
	unique_recipients_minute int4 NOT NULL,
	unique_recipients_window timestamp NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp DEFAULT now() NOT NULL,
	CONSTRAINT pk_message_rate_limits PRIMARY KEY (id)
);
CREATE UNIQUE INDEX idx_rate_limit_user ON public.message_rate_limits USING btree (user_id);


-- public.messaging_conversations definition

-- Drop table

-- DROP TABLE public.messaging_conversations;

CREATE TABLE public.messaging_conversations (
	id serial4 NOT NULL,
	user1_id text NOT NULL,
	user2_id text NOT NULL,
	last_message_preview text NULL,
	last_message_at timestamp NULL,
	last_message_sender_id text NULL,
	user1_deleted_at timestamp NULL,
	user2_deleted_at timestamp NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp DEFAULT now() NOT NULL,
	last_message_id int4 NULL,
	user1_deleted_before_msg_id int4 NULL,
	user2_deleted_before_msg_id int4 NULL,
	CONSTRAINT pk_messaging_conversations PRIMARY KEY (id)
);
CREATE INDEX idx_conversation_last_message ON public.messaging_conversations USING btree (last_message_at);
CREATE INDEX idx_conversation_user1 ON public.messaging_conversations USING btree (user1_id);
CREATE INDEX idx_conversation_user2 ON public.messaging_conversations USING btree (user2_id);
CREATE UNIQUE INDEX idx_conversation_users ON public.messaging_conversations USING btree (user1_id, user2_id);


-- public.passages definition

-- Drop table

-- DROP TABLE public.passages;

CREATE TABLE public.passages (
	id serial4 NOT NULL,
	passage_id varchar(200) NOT NULL,
	title varchar(300) NULL,
	content_ja text NOT NULL,
	content_vi text NULL,
	content_en text NULL,
	content_furigana text NULL,
	"level" varchar(10) NULL,
	topic varchar(100) NULL,
	passage_type varchar(50) NULL,
	difficulty int4 NULL,
	word_count int4 NULL,
	character_count int4 NULL,
	estimated_reading_time_seconds int4 NULL,
	audio_id varchar(200) NULL,
	"source" varchar(200) NULL,
	source_url varchar(500) NULL,
	author varchar(200) NULL,
	tags json NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp NULL,
	CONSTRAINT pk_passages PRIMARY KEY (id)
);
CREATE INDEX ix_passages_audio_id ON public.passages USING btree (audio_id);
CREATE INDEX ix_passages_id ON public.passages USING btree (id);
CREATE INDEX ix_passages_level ON public.passages USING btree (level);
CREATE INDEX ix_passages_level_topic ON public.passages USING btree (level, topic);
CREATE UNIQUE INDEX ix_passages_passage_id ON public.passages USING btree (passage_id);
CREATE INDEX ix_passages_passage_type ON public.passages USING btree (passage_type);
CREATE INDEX ix_passages_topic ON public.passages USING btree (topic);


-- public.permissions definition

-- Drop table

-- DROP TABLE public.permissions;

CREATE TABLE public.permissions (
	id text NOT NULL,
	"name" text NOT NULL,
	description text NULL,
	resource text NOT NULL,
	"action" text NOT NULL,
	created_at timestamp NOT NULL,
	CONSTRAINT pk_permissions PRIMARY KEY (id)
);


-- public.premium_access_campaigns definition

-- Drop table

-- DROP TABLE public.premium_access_campaigns;

CREATE TABLE public.premium_access_campaigns (
	id int4 DEFAULT nextval('curriculum_access_campaigns_id_seq'::regclass) NOT NULL,
	"name" text NOT NULL,
	description text NULL,
	content_type text DEFAULT 'all'::text NOT NULL,
	resource_ids jsonb NULL,
	started_at timestamp NOT NULL,
	ended_at timestamp NULL,
	is_active bool DEFAULT true NOT NULL,
	created_by text NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp NULL,
	unlock_mode text DEFAULT 'unlock_all'::text NOT NULL,
	extra_preview_count int4 NULL,
	priority int4 DEFAULT 0 NOT NULL,
	banner_text text NULL,
	banner_image_url text NULL,
	CONSTRAINT pk_curriculum_access_campaigns PRIMARY KEY (id)
);
CREATE INDEX idx_premium_campaigns_active ON public.premium_access_campaigns USING btree (is_active, started_at, ended_at);
CREATE INDEX idx_premium_campaigns_type ON public.premium_access_campaigns USING btree (content_type, is_active);


-- public.pronunciation_alphabet definition

-- Drop table

-- DROP TABLE public.pronunciation_alphabet;

CREATE TABLE public.pronunciation_alphabet (
	id serial4 NOT NULL,
	audio_id varchar(50) NOT NULL,
	romaji varchar(50) NOT NULL,
	hiragana_character text NULL,
	katakana_character text NULL,
	character_type varchar(20) NOT NULL,
	order_index int4 NOT NULL,
	group_name varchar(20) NULL,
	meaning_vi text NULL,
	example_word text NULL,
	example_meaning_vi text NULL,
	example_audio_id varchar(200) NULL,
	mora_count int4 NULL,
	mora_list json NULL,
	mora_breakdown text NULL,
	pitch_pattern varchar(10) NULL,
	pitch_sequence json NULL,
	pitch_accent_type varchar(20) NULL,
	pitch_drop_position int4 NULL,
	unidic_atype int4 NULL,
	is_active bool DEFAULT true NULL,
	created_at timestamp DEFAULT now() NULL,
	updated_at timestamp NULL,
	example_word_romaji varchar(200) NULL,
	example_image_path varchar(500) NULL,
	male_audio_id varchar(200) NULL,
	female_audio_id varchar(200) NULL,
	CONSTRAINT pk_pronunciation_alphabet PRIMARY KEY (id)
);
CREATE UNIQUE INDEX ix_pronunciation_alphabet_audio_id ON public.pronunciation_alphabet USING btree (audio_id);
CREATE INDEX ix_pronunciation_alphabet_character_type ON public.pronunciation_alphabet USING btree (character_type);
CREATE INDEX ix_pronunciation_alphabet_id ON public.pronunciation_alphabet USING btree (id);
CREATE INDEX ix_pronunciation_alphabet_order_index ON public.pronunciation_alphabet USING btree (order_index);
CREATE INDEX ix_pronunciation_alphabet_romaji ON public.pronunciation_alphabet USING btree (romaji);


-- public.question_set_questions definition

-- Drop table

-- DROP TABLE public.question_set_questions;

CREATE TABLE public.question_set_questions (
	id serial4 NOT NULL,
	user_id text NULL,
	question_set_id int4 NULL,
	question_id int4 NULL,
	order_index int4 DEFAULT 0 NULL,
	reading_passage_id int4 NULL,
	listening_collection_id int4 NULL,
	play_from int4 NULL,
	play_to int4 NULL,
	CONSTRAINT pk_question_set_questions PRIMARY KEY (id)
);
CREATE INDEX ix_qsq_question_id ON public.question_set_questions USING btree (question_id);
CREATE INDEX ix_qsq_question_set_id ON public.question_set_questions USING btree (question_set_id);


-- public.questions definition

-- Drop table

-- DROP TABLE public.questions;

CREATE TABLE public.questions (
	id serial4 NOT NULL,
	user_id text NULL,
	is_system bool DEFAULT false NULL,
	question_type text NULL,
	content_type text NULL,
	"level" text NULL,
	secret_word text NULL,
	hiragana text NULL,
	word_explanation text NULL,
	passage text NULL,
	passage_translation text NULL,
	sentence text NULL,
	sentence_translation text NULL,
	general_explanation text NULL,
	furigana text NULL,
	question_type_num int4 NULL,
	base_difficulty int4 NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	question text NULL,
	folder_id text NULL,
	selection_type text DEFAULT 'single'::text NULL,
	image_link text NULL,
	is_khoa_cu bool DEFAULT false NOT NULL,
	audio_ids jsonb DEFAULT '[]'::jsonb NULL,
	audio_data jsonb NULL,
	bunsetsu_cache jsonb NULL,
	skill_category varchar(30) NULL,
	CONSTRAINT pk_questions PRIMARY KEY (id)
);
CREATE INDEX ix_questions_is_system ON public.questions USING btree (is_system) WHERE (is_deleted = false);
CREATE INDEX ix_questions_khoa_cu_level ON public.questions USING btree (is_khoa_cu, level, is_active, is_deleted) WHERE ((is_khoa_cu = true) AND (is_active = true) AND (is_deleted = false));
CREATE INDEX ix_questions_level_skill ON public.questions USING btree (level, skill_category) WHERE (is_deleted = false);


-- public.questions_answers definition

-- Drop table

-- DROP TABLE public.questions_answers;

CREATE TABLE public.questions_answers (
	id serial4 NOT NULL,
	question_id int4 NOT NULL,
	sentence text NULL,
	secret_word text NULL,
	sentence_translation text NULL,
	is_correct bool DEFAULT false NULL,
	is_custom bool DEFAULT false NULL,
	explanation text NULL,
	furigana text NULL,
	"order" int4 DEFAULT 0 NULL,
	image_link text NULL,
	audio_ids jsonb DEFAULT '[]'::jsonb NULL,
	audio_data jsonb NULL,
	bunsetsu_cache jsonb NULL,
	CONSTRAINT pk_questions_answers PRIMARY KEY (id)
);


-- public.ratings definition

-- Drop table

-- DROP TABLE public.ratings;

CREATE TABLE public.ratings (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	content_type text NOT NULL,
	content_id text NOT NULL,
	rating int4 NOT NULL,
	review text NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp NULL,
	CONSTRAINT pk_ratings PRIMARY KEY (id)
);


-- public.reading_home_sections definition

-- Drop table

-- DROP TABLE public.reading_home_sections;

CREATE TABLE public.reading_home_sections (
	id serial4 NOT NULL,
	title text NOT NULL,
	subtitle text NULL,
	curriculum_ids jsonb DEFAULT '[]'::jsonb NOT NULL,
	order_index int4 DEFAULT 0 NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp NULL,
	"rows" int4 DEFAULT 1 NOT NULL,
	CONSTRAINT pk_reading_home_sections PRIMARY KEY (id)
);
CREATE INDEX idx_reading_home_sections_active_order ON public.reading_home_sections USING btree (is_active, order_index);


-- public.reading_passages definition

-- Drop table

-- DROP TABLE public.reading_passages;

CREATE TABLE public.reading_passages (
	id serial4 NOT NULL,
	user_id text NULL,
	is_system bool DEFAULT false NULL,
	title text NOT NULL,
	slug text NULL,
	"content" text NOT NULL,
	furigana text NULL,
	"translation" text NULL,
	highlighted_segments json NULL,
	jlpt_level text NULL,
	category text NULL,
	difficulty int4 DEFAULT 1 NULL,
	word_count int4 DEFAULT 0 NULL,
	estimated_reading_time int4 DEFAULT 0 NULL,
	audio_url text NULL,
	image_url text NULL,
	tags text NULL,
	folder_id int4 NULL,
	"source" text NULL,
	source_url text NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	bunsetsu_cache jsonb NULL,
	bunsetsu_cached_at timestamp NULL,
	is_public bool DEFAULT false NOT NULL,
	CONSTRAINT reading_passages_pkey PRIMARY KEY (id)
);


-- public.resource_media definition

-- Drop table

-- DROP TABLE public.resource_media;

CREATE TABLE public.resource_media (
	id serial4 NOT NULL,
	resource_type varchar(50) NOT NULL,
	resource_id int4 NOT NULL,
	media_type varchar(50) NOT NULL,
	media_id varchar(200) NOT NULL,
	in_table varchar(100) NOT NULL,
	order_index int4 DEFAULT 0 NOT NULL,
	context jsonb DEFAULT '{}'::jsonb NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp NULL,
	CONSTRAINT pk_resource_media PRIMARY KEY (id)
);
CREATE INDEX ix_resource_media_id ON public.resource_media USING btree (id);
CREATE INDEX ix_resource_media_in_table ON public.resource_media USING btree (in_table);
CREATE INDEX ix_resource_media_media ON public.resource_media USING btree (media_type, media_id);
CREATE INDEX ix_resource_media_media_id ON public.resource_media USING btree (media_id);
CREATE INDEX ix_resource_media_media_type ON public.resource_media USING btree (media_type);
CREATE INDEX ix_resource_media_order ON public.resource_media USING btree (resource_type, resource_id, order_index);
CREATE INDEX ix_resource_media_resource ON public.resource_media USING btree (resource_type, resource_id);
CREATE INDEX ix_resource_media_resource_id ON public.resource_media USING btree (resource_id);
CREATE INDEX ix_resource_media_resource_type ON public.resource_media USING btree (resource_type);
CREATE UNIQUE INDEX uq_resource_media_link ON public.resource_media USING btree (resource_type, resource_id, media_type, media_id);


-- public.search_history definition

-- Drop table

-- DROP TABLE public.search_history;

CREATE TABLE public.search_history (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	search_text text NULL,
	search_type text NULL,
	search_result text NULL,
	searched_at timestamp NULL,
	CONSTRAINT pk_search_history PRIMARY KEY (id)
);


-- public.shop_items definition

-- Drop table

-- DROP TABLE public.shop_items;

CREATE TABLE public.shop_items (
	id serial4 NOT NULL,
	item_code varchar(50) NOT NULL,
	item_type varchar(20) NOT NULL,
	"name" varchar(100) NOT NULL,
	description text NULL,
	category varchar(30) NULL,
	metadata jsonb DEFAULT '{}'::jsonb NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp NULL,
	icon_url text NULL,
	currency_type varchar(20) DEFAULT 'coins'::character varying NOT NULL,
	price int4 NOT NULL,
	is_default bool DEFAULT false NOT NULL,
	required_level int4 NULL,
	required_study_days int4 NULL,
	CONSTRAINT shop_items_pkey PRIMARY KEY (id)
);
CREATE INDEX ix_shop_items_category ON public.shop_items USING btree (category);
CREATE INDEX ix_shop_items_is_active ON public.shop_items USING btree (is_active);
CREATE UNIQUE INDEX ix_shop_items_item_code ON public.shop_items USING btree (item_code);
CREATE INDEX ix_shop_items_item_type ON public.shop_items USING btree (item_type);


-- public.spam_violations definition

-- Drop table

-- DROP TABLE public.spam_violations;

CREATE TABLE public.spam_violations (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	violation_type text NOT NULL,
	violation_details text NULL,
	action_taken text NOT NULL,
	blocked_until timestamp NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	CONSTRAINT pk_spam_violations PRIMARY KEY (id)
);
CREATE INDEX idx_spam_violation_created ON public.spam_violations USING btree (created_at);
CREATE INDEX idx_spam_violation_user ON public.spam_violations USING btree (user_id);


-- public.study_goal_progress definition

-- Drop table

-- DROP TABLE public.study_goal_progress;

CREATE TABLE public.study_goal_progress (
	id serial4 NOT NULL,
	user_id text NULL,
	goal_id int4 NULL,
	study_goal_set_id int4 NULL,
	"date" timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	words_learned int4 DEFAULT 0 NULL,
	again_count int4 DEFAULT 0 NULL,
	hard_count int4 DEFAULT 0 NULL,
	good_count int4 DEFAULT 0 NULL,
	easy_count int4 DEFAULT 0 NULL,
	is_completed bool DEFAULT false NULL,
	CONSTRAINT pk_study_goal_progress PRIMARY KEY (id)
);
CREATE INDEX idx_study_goal_progress_user_goal_date ON public.study_goal_progress USING btree (user_id, goal_id, date);
CREATE INDEX idx_study_goal_progress_user_goal_set ON public.study_goal_progress USING btree (user_id, goal_id, study_goal_set_id);


-- public.study_goal_sets definition

-- Drop table

-- DROP TABLE public.study_goal_sets;

CREATE TABLE public.study_goal_sets (
	id serial4 NOT NULL,
	user_id text NULL,
	goal_id int4 NULL,
	set_type text NULL,
	set_id int4 NULL,
	order_index int4 DEFAULT 0 NULL,
	milestone_date timestamp NULL,
	target_count int4 DEFAULT 0 NULL,
	completed_count int4 DEFAULT 0 NULL,
	is_completed bool DEFAULT false NULL,
	created_at timestamp DEFAULT now() NULL,
	updated_at timestamp NULL,
	CONSTRAINT pk_study_goal_sets PRIMARY KEY (id)
);
CREATE INDEX idx_study_goal_sets_goal_order ON public.study_goal_sets USING btree (goal_id, order_index);
CREATE INDEX idx_study_goal_sets_goal_user ON public.study_goal_sets USING btree (goal_id, user_id);


-- public.study_goals definition

-- Drop table

-- DROP TABLE public.study_goals;

CREATE TABLE public.study_goals (
	id serial4 NOT NULL,
	user_id text NULL,
	"name" text NULL,
	description text NULL,
	goal_type text NULL,
	content_type text NULL,
	"level" text NULL,
	folder_id int4 NULL,
	start_date timestamp NULL,
	estimated_end_date timestamp NULL,
	target_date timestamp NULL,
	exam_date timestamp NULL,
	target_words int4 NULL,
	target_grammar int4 DEFAULT 0 NULL,
	target_kanji int4 DEFAULT 0 NULL,
	target_normal int4 DEFAULT 0 NULL,
	daily_words_target int4 DEFAULT 0 NULL,
	daily_grammar_target int4 DEFAULT 0 NULL,
	daily_kanji_target int4 DEFAULT 0 NULL,
	daily_normal_target int4 DEFAULT 0 NULL,
	daily_flashcards int4 NULL,
	daily_quiz_questions int4 NULL,
	review_days int4 DEFAULT 3 NULL,
	words_learned int4 DEFAULT 0 NULL,
	grammar_learned int4 DEFAULT 0 NULL,
	kanji_learned int4 DEFAULT 0 NULL,
	normal_learned int4 DEFAULT 0 NULL,
	created_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	updated_at timestamp NULL,
	CONSTRAINT pk_study_goals PRIMARY KEY (id)
);
CREATE INDEX idx_study_goal_user_created ON public.study_goals USING btree (user_id, created_at DESC);


-- public.study_modules definition

-- Drop table

-- DROP TABLE public.study_modules;

CREATE TABLE public.study_modules (
	id serial4 NOT NULL,
	code varchar(50) NOT NULL,
	"name" varchar(200) NOT NULL,
	module_type varchar(50) NOT NULL,
	description text NULL,
	difficulty varchar(50) NULL,
	topic varchar(100) NULL,
	order_index int4 NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	created_by text NULL,
	updated_by text NULL,
	free_preview_count int4 DEFAULT 5 NULL,
	CONSTRAINT pk_study_modules PRIMARY KEY (id)
);
CREATE UNIQUE INDEX ix_study_modules_code ON public.study_modules USING btree (code);
CREATE INDEX ix_study_modules_id ON public.study_modules USING btree (id);
CREATE INDEX ix_study_modules_module_type ON public.study_modules USING btree (module_type);
CREATE INDEX ix_study_modules_tenant_id ON public.study_modules USING btree (tenant_id);


-- public.study_question_sets definition

-- Drop table

-- DROP TABLE public.study_question_sets;

CREATE TABLE public.study_question_sets (
	id serial4 NOT NULL,
	"name" varchar(200) NOT NULL,
	description text NULL,
	set_type varchar(30) DEFAULT 'practice'::character varying NOT NULL,
	card_count int4 DEFAULT 0 NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	created_by text NULL,
	updated_by text NULL,
	CONSTRAINT pk_study_question_sets PRIMARY KEY (id)
);
CREATE INDEX ix_study_question_sets_id ON public.study_question_sets USING btree (id);
CREATE INDEX ix_study_question_sets_set_type ON public.study_question_sets USING btree (set_type);


-- public.study_resource_links definition

-- Drop table

-- DROP TABLE public.study_resource_links;

CREATE TABLE public.study_resource_links (
	id serial4 NOT NULL,
	resource_type varchar(50) NOT NULL,
	resource_id int4 NOT NULL,
	target_type varchar(50) NOT NULL,
	target_id int4 NOT NULL,
	order_index int4 DEFAULT 0 NOT NULL,
	context jsonb DEFAULT '{}'::jsonb NULL,
	tenant_id text NULL,
	is_active bool DEFAULT true NOT NULL,
	is_deleted bool DEFAULT false NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	CONSTRAINT pk_study_resource_links PRIMARY KEY (id)
);
CREATE INDEX idx_srl_resource ON public.study_resource_links USING btree (resource_type, resource_id) WHERE (is_deleted = false);
CREATE UNIQUE INDEX idx_srl_unique ON public.study_resource_links USING btree (resource_type, resource_id, target_type, target_id) WHERE (is_deleted = false);
CREATE INDEX ix_srl_resource ON public.study_resource_links USING btree (resource_type, resource_id) WHERE (is_deleted = false);
CREATE INDEX ix_srl_target ON public.study_resource_links USING btree (target_type, target_id) WHERE (is_deleted = false);
CREATE INDEX ix_study_resource_links_id ON public.study_resource_links USING btree (id);


-- public.study_sessions definition

-- Drop table

-- DROP TABLE public.study_sessions;

CREATE TABLE public.study_sessions (
	id serial4 NOT NULL,
	base_date timestamp NOT NULL,
	user_id text NOT NULL,
	start_time timestamp NOT NULL,
	end_time timestamp NULL,
	duration_seconds int4 NULL,
	session_type text NOT NULL,
	score int4 NULL,
	notes text NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp NULL,
	created_by text NULL,
	updated_by text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	content_id text NULL,
	target_id text NULL,
	goal_id int4 NULL,
	study_goal_set_id int4 NULL,
	CONSTRAINT pk_study_sessions PRIMARY KEY (id)
);


-- public.system_announcements definition

-- Drop table

-- DROP TABLE public.system_announcements;

CREATE TABLE public.system_announcements (
	id serial4 NOT NULL,
	title varchar(255) NULL,
	"content" text NOT NULL,
	order_index int4 NULL,
	is_active bool DEFAULT true NULL,
	created_at timestamp NOT NULL,
	updated_at timestamp NULL,
	CONSTRAINT pk_system_announcements PRIMARY KEY (id)
);
CREATE INDEX ix_system_announcements_active_order ON public.system_announcements USING btree (is_active, order_index);
CREATE INDEX ix_system_announcements_id ON public.system_announcements USING btree (id);
CREATE INDEX ix_system_announcements_is_active ON public.system_announcements USING btree (is_active);
CREATE INDEX ix_system_announcements_order_index ON public.system_announcements USING btree (order_index);


-- public.tags definition

-- Drop table

-- DROP TABLE public.tags;

CREATE TABLE public.tags (
	id serial4 NOT NULL,
	is_system bool DEFAULT false NULL,
	tenant_id text NULL,
	user_id text NULL,
	tag_name text NOT NULL,
	description text NULL,
	category text NULL,
	color text NULL,
	created_at timestamp NULL,
	created_by text NULL,
	CONSTRAINT pk_tags PRIMARY KEY (id)
);


-- public.teacher_students definition

-- Drop table

-- DROP TABLE public.teacher_students;

CREATE TABLE public.teacher_students (
	id serial4 NOT NULL,
	teacher_id text NOT NULL,
	student_id text NOT NULL,
	enrollment_date date DEFAULT CURRENT_DATE NOT NULL,
	status varchar(20) DEFAULT 'active'::character varying NOT NULL,
	notes text NULL,
	parent_contact text NULL,
	emergency_contact text NULL,
	address text NULL,
	student_code varchar(50) NULL,
	tags text NULL,
	tenant_id int4 NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamptz NULL,
	updated_by text NULL,
	CONSTRAINT pk_teacher_students PRIMARY KEY (id),
	CONSTRAINT uq_teacher_student UNIQUE (teacher_id, student_id)
);
CREATE INDEX ix_teacher_students_id ON public.teacher_students USING btree (id);
CREATE INDEX ix_teacher_students_is_deleted ON public.teacher_students USING btree (is_deleted);
CREATE INDEX ix_teacher_students_status ON public.teacher_students USING btree (status);
CREATE INDEX ix_teacher_students_student_code ON public.teacher_students USING btree (student_code);
CREATE INDEX ix_teacher_students_student_id ON public.teacher_students USING btree (student_id);
CREATE INDEX ix_teacher_students_teacher_id ON public.teacher_students USING btree (teacher_id);


-- public.tenant_memberships definition

-- Drop table

-- DROP TABLE public.tenant_memberships;

CREATE TABLE public.tenant_memberships (
	id text NOT NULL,
	user_id text NOT NULL,
	tenant_id text NOT NULL,
	"role" text NOT NULL,
	status text NOT NULL,
	department text NULL,
	"position" text NULL,
	joined_at timestamp NOT NULL,
	is_deleted bool NOT NULL,
	is_active bool NOT NULL,
	created_at timestamp NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	CONSTRAINT pk_tenant_memberships PRIMARY KEY (id)
);


-- public.tenants definition

-- Drop table

-- DROP TABLE public.tenants;

CREATE TABLE public.tenants (
	id text NOT NULL,
	"name" text NOT NULL,
	"domain" text NOT NULL,
	logo_url text NULL,
	contact_email text NOT NULL,
	phone text NULL,
	address text NULL,
	subscription_plan text NOT NULL,
	subscription_status text NOT NULL,
	subscription_expires_at timestamp NULL,
	max_groups int4 NOT NULL,
	max_students int4 NOT NULL,
	max_teachers int4 NOT NULL,
	settings json NOT NULL,
	is_deleted bool NOT NULL,
	is_active bool NOT NULL,
	created_at timestamp NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	CONSTRAINT pk_tenants PRIMARY KEY (id)
);


-- public.user_activity_log definition

-- Drop table

-- DROP TABLE public.user_activity_log;

CREATE TABLE public.user_activity_log (
	id bigserial NOT NULL,
	user_id text NOT NULL,
	entity_type varchar(50) NOT NULL,
	entity_id varchar(50) NOT NULL,
	entity_title text DEFAULT ''::text NOT NULL,
	tenant_id varchar(50) DEFAULT ''::character varying NOT NULL,
	metadata json DEFAULT '{}'::json NOT NULL,
	visit_count int4 DEFAULT 1 NOT NULL,
	first_accessed_at timestamptz DEFAULT now() NOT NULL,
	accessed_at timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT pk_user_activity_log PRIMARY KEY (id),
	CONSTRAINT uq_user_activity_log UNIQUE (user_id, entity_type, entity_id)
);
CREATE INDEX ix_user_activity_recent ON public.user_activity_log USING btree (user_id, accessed_at);
CREATE INDEX ix_user_activity_type ON public.user_activity_log USING btree (user_id, entity_type, accessed_at);


-- public.user_bookmarks definition

-- Drop table

-- DROP TABLE public.user_bookmarks;

CREATE TABLE public.user_bookmarks (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	content_type text NOT NULL,
	content_id text NOT NULL,
	target_table text NOT NULL,
	is_dict bool DEFAULT false NOT NULL,
	CONSTRAINT pk_user_bookmarks PRIMARY KEY (id),
	CONSTRAINT uq_user_bookmarks_unique UNIQUE (user_id, content_type, content_id)
);
CREATE INDEX ix_user_bookmarks_user_id ON public.user_bookmarks USING btree (user_id);
CREATE INDEX ix_user_bookmarks_user_type ON public.user_bookmarks USING btree (user_id, content_type);


-- public.user_bookshelf definition

-- Drop table

-- DROP TABLE public.user_bookshelf;

CREATE TABLE public.user_bookshelf (
	id bigserial NOT NULL,
	user_id text NOT NULL,
	curriculum_id int4 NOT NULL,
	added_at timestamptz DEFAULT now() NOT NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamptz NULL,
	updated_by text NULL,
	CONSTRAINT pk_user_bookshelf PRIMARY KEY (id),
	CONSTRAINT uq_user_bookshelf UNIQUE (user_id, curriculum_id)
);
CREATE INDEX ix_user_bookshelf_user_added ON public.user_bookshelf USING btree (user_id, added_at) WHERE (is_deleted = false);


-- public.user_notes definition

-- Drop table

-- DROP TABLE public.user_notes;

CREATE TABLE public.user_notes (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	storage_key text NOT NULL,
	content_type text DEFAULT ''::text NOT NULL,
	content_id int4 NULL,
	in_table text NULL,
	strokes json DEFAULT '[]'::json NOT NULL,
	updated_at timestamp NULL,
	text_content text NULL,
	meta json NULL,
	CONSTRAINT uq_user_notes_user_key UNIQUE (user_id, storage_key),
	CONSTRAINT user_notes_pkey PRIMARY KEY (id)
);
CREATE INDEX ix_user_notes_content ON public.user_notes USING btree (content_type, content_id);
CREATE INDEX ix_user_notes_storage_key ON public.user_notes USING btree (storage_key);
CREATE INDEX ix_user_notes_user_id ON public.user_notes USING btree (user_id);


-- public.user_practice_sessions definition

-- Drop table

-- DROP TABLE public.user_practice_sessions;

CREATE TABLE public.user_practice_sessions (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	question_set_id int4 NULL,
	session_type text NULL,
	started_at timestamp NULL,
	completed_at timestamp NULL,
	description text NULL,
	is_completed bool DEFAULT false NULL,
	total_questions int4 NULL,
	questions_answered int4 NULL,
	correct_answers int4 NULL,
	wrong_answers int4 NULL,
	total_score int4 NULL,
	accuracy_percentage int4 NULL,
	total_time_ms int4 NULL,
	CONSTRAINT pk_user_practice_sessions PRIMARY KEY (id)
);


-- public.user_states definition

-- Drop table

-- DROP TABLE public.user_states;

CREATE TABLE public.user_states (
	id bigserial NOT NULL,
	user_id text NOT NULL,
	entity_type varchar(50) NOT NULL,
	entity_id varchar(50) DEFAULT ''::character varying NOT NULL,
	state json DEFAULT '{}'::json NOT NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	updated_at timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT pk_user_states PRIMARY KEY (id),
	CONSTRAINT uq_user_states_unique UNIQUE (user_id, entity_type, entity_id)
);
CREATE INDEX ix_user_states_user ON public.user_states USING btree (user_id, entity_type);


-- public.user_study_streaks definition

-- Drop table

-- DROP TABLE public.user_study_streaks;

CREATE TABLE public.user_study_streaks (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	streak_date timestamp NOT NULL,
	study_type text NOT NULL,
	cards_reviewed int4 NULL,
	questions_reviewed int4 NULL,
	time_spent_seconds int4 NULL,
	accuracy_rate float8 NULL,
	tenant_id text NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	streak_frozen bool DEFAULT false NULL,
	freeze_source text NULL,
	CONSTRAINT pk_user_study_streaks PRIMARY KEY (id)
);


-- public.user_subscription definition

-- Drop table

-- DROP TABLE public.user_subscription;

CREATE TABLE public.user_subscription (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	subscription_type text NOT NULL,
	started_at timestamp NOT NULL,
	expires_at timestamp NOT NULL,
	created_by text NOT NULL,
	created_at timestamp NOT NULL,
	updated_by text NULL,
	updated_at timestamp NULL,
	subscription_plan text NULL,
	CONSTRAINT pk_user_subscription PRIMARY KEY (id)
);


-- public.users definition

-- Drop table

-- DROP TABLE public.users;

CREATE TABLE public.users (
	id text NOT NULL,
	email text NULL,
	password_hash text NOT NULL,
	first_name text NOT NULL,
	last_name text NOT NULL,
	avatar_url text NULL,
	phone text NULL,
	is_email_verified bool DEFAULT false NOT NULL,
	date_of_birth timestamp NULL,
	gender text NULL,
	language_level text NULL,
	last_login_at timestamp NULL,
	"role" text DEFAULT 'Free'::text NOT NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	custom_id text NULL,
	show_name text NULL,
	tenant_id text NULL,
	google_id text NULL,
	google_access_token text NULL,
	google_refresh_token text NULL,
	google_token_expires_at timestamp NULL,
	google_calendar_id text NULL,
	google_calendar_sync_enabled bool DEFAULT false NULL,
	google_calendar_last_sync timestamp NULL,
	timezone text NULL,
	apple_id text NULL,
	apple_refresh_token text NULL,
	apple_token_expires_at timestamp NULL,
	apple_email_is_private bool NULL,
	CONSTRAINT pk_users PRIMARY KEY (id),
	CONSTRAINT uq_users_apple_id UNIQUE (apple_id),
	CONSTRAINT uq_users_custom_id UNIQUE (custom_id),
	CONSTRAINT uq_users_google_id UNIQUE (google_id)
);


-- public.videos definition

-- Drop table

-- DROP TABLE public.videos;

CREATE TABLE public.videos (
	id serial4 NOT NULL,
	video_id varchar(200) NOT NULL,
	url varchar(500) NOT NULL,
	embed_url varchar(500) NULL,
	thumbnail_url varchar(500) NULL,
	title varchar(300) NULL,
	description text NULL,
	duration_seconds int4 NULL,
	platform varchar(50) NULL,
	external_id varchar(100) NULL,
	"level" varchar(10) NULL,
	topic varchar(100) NULL,
	category varchar(50) NULL,
	timestamps json NULL,
	subtitles_ja text NULL,
	subtitles_vi text NULL,
	subtitles_en text NULL,
	tags json NULL,
	"source" varchar(200) NULL,
	author varchar(200) NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp NULL,
	CONSTRAINT pk_videos PRIMARY KEY (id)
);
CREATE INDEX ix_videos_category ON public.videos USING btree (category);
CREATE INDEX ix_videos_id ON public.videos USING btree (id);
CREATE INDEX ix_videos_level ON public.videos USING btree (level);
CREATE INDEX ix_videos_level_topic ON public.videos USING btree (level, topic);
CREATE INDEX ix_videos_platform ON public.videos USING btree (platform);
CREATE INDEX ix_videos_topic ON public.videos USING btree (topic);
CREATE UNIQUE INDEX ix_videos_video_id ON public.videos USING btree (video_id);


-- public.vocabulary definition

-- Drop table

-- DROP TABLE public.vocabulary;

CREATE TABLE public.vocabulary (
	id serial4 NOT NULL,
	user_id text NULL,
	"level" text NULL,
	meaning text NOT NULL,
	meaning_ja text NULL,
	explanation text NULL,
	kanji_count int4 DEFAULT 0 NOT NULL,
	audio_link text NULL,
	image_link text NULL,
	is_favorite bool DEFAULT false NOT NULL,
	difficulty int4 DEFAULT 1 NOT NULL,
	tags text NULL,
	order_index int4 DEFAULT 0 NOT NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	pos text NULL,
	"type" text NULL,
	lemma text NOT NULL,
	kana text NULL,
	han_viet text NULL,
	is_system bool DEFAULT false NOT NULL,
	audio_data jsonb NULL,
	CONSTRAINT pk_vocabulary PRIMARY KEY (id)
);
CREATE INDEX ix_vocabulary_is_favorite ON public.vocabulary USING btree (is_favorite);
CREATE INDEX ix_vocabulary_is_system ON public.vocabulary USING btree (is_system);


-- public.answer_history definition

-- Drop table

-- DROP TABLE public.answer_history;

CREATE TABLE public.answer_history (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	question_id int4 NOT NULL,
	session_id int4 NULL,
	session_type text NULL,
	goal_id int4 NULL,
	question_set_id int4 NULL,
	user_answer text NULL,
	correct_answer text NULL,
	is_correct bool NOT NULL,
	response_time_ms int4 NULL,
	think_time_ms int4 NULL,
	total_time_ms int4 NULL,
	answered_at timestamp DEFAULT now() NOT NULL,
	CONSTRAINT pk_answer_history PRIMARY KEY (id),
	CONSTRAINT fk_answer_history_question_id_questions FOREIGN KEY (question_id) REFERENCES public.questions(id)
);
CREATE INDEX ix_answer_history_user_question_time ON public.answer_history USING btree (user_id, question_id, answered_at);


-- public.app_comments definition

-- Drop table

-- DROP TABLE public.app_comments;

CREATE TABLE public.app_comments (
	id serial4 NOT NULL,
	context_type varchar(50) NOT NULL,
	context_id varchar(100) NOT NULL,
	user_id text NOT NULL,
	"content" varchar(200) NOT NULL,
	is_deleted bool DEFAULT false NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	CONSTRAINT pk_app_comments PRIMARY KEY (id),
	CONSTRAINT fk_app_comments_user_id_users FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE
);
CREATE INDEX ix_appcomment_context ON public.app_comments USING btree (context_type, context_id);
CREATE INDEX ix_appcomment_created ON public.app_comments USING btree (created_at);
CREATE INDEX ix_appcomment_user_created ON public.app_comments USING btree (user_id, created_at);


-- public.app_ratings definition

-- Drop table

-- DROP TABLE public.app_ratings;

CREATE TABLE public.app_ratings (
	id serial4 NOT NULL,
	context_type varchar(50) NOT NULL,
	context_id varchar(100) NOT NULL,
	user_id text NOT NULL,
	score int4 NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	CONSTRAINT pk_app_ratings PRIMARY KEY (id),
	CONSTRAINT uq_rating_context_user UNIQUE (context_type, context_id, user_id),
	CONSTRAINT fk_app_ratings_user_id_users FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE
);
CREATE INDEX ix_apprating_context ON public.app_ratings USING btree (context_type, context_id);


-- public.app_reactions definition

-- Drop table

-- DROP TABLE public.app_reactions;

CREATE TABLE public.app_reactions (
	id serial4 NOT NULL,
	comment_id int4 NOT NULL,
	user_id text NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	CONSTRAINT pk_app_reactions PRIMARY KEY (id),
	CONSTRAINT uq_reaction_comment_user UNIQUE (comment_id, user_id),
	CONSTRAINT fk_app_reactions_comment_id_app_comments FOREIGN KEY (comment_id) REFERENCES public.app_comments(id) ON DELETE CASCADE,
	CONSTRAINT fk_app_reactions_user_id_users FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE
);
CREATE INDEX ix_appreaction_comment ON public.app_reactions USING btree (comment_id);


-- public.assignment_groups definition

-- Drop table

-- DROP TABLE public.assignment_groups;

CREATE TABLE public.assignment_groups (
	id serial4 NOT NULL,
	class_id int4 NOT NULL,
	source_type text NOT NULL,
	source_id int4 NULL,
	title text NOT NULL,
	description text NULL,
	deadline timestamp NULL,
	status text DEFAULT 'draft'::text NOT NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	CONSTRAINT pk_assignment_groups PRIMARY KEY (id),
	CONSTRAINT fk_assignment_groups_class_id_classes FOREIGN KEY (class_id) REFERENCES public.classes(class_id) ON DELETE CASCADE
);
CREATE INDEX idx_ag_class ON public.assignment_groups USING btree (class_id, status) WHERE (is_deleted = false);
CREATE INDEX ix_assignment_groups_id ON public.assignment_groups USING btree (id);


-- public.audiobook_paragraphs definition

-- Drop table

-- DROP TABLE public.audiobook_paragraphs;

CREATE TABLE public.audiobook_paragraphs (
	id serial4 NOT NULL,
	audiobook_id int4 NOT NULL,
	paragraph_index int4 NOT NULL,
	content_ja text NOT NULL,
	content_vi text NULL,
	audio_file_path varchar(500) NULL,
	audio_duration_ms int4 NULL,
	sentence_timestamps jsonb NULL,
	bunsetsu_cache jsonb NULL,
	bunsetsu_cached_at timestamp NULL,
	audio_status varchar(20) DEFAULT 'pending'::character varying NULL,
	bunsetsu_status varchar(20) DEFAULT 'pending'::character varying NULL,
	CONSTRAINT pk_audiobook_paragraphs PRIMARY KEY (id),
	CONSTRAINT fk_audiobook_paragraphs_audiobook_id_audiobooks FOREIGN KEY (audiobook_id) REFERENCES public.audiobooks(id) ON DELETE CASCADE
);
CREATE UNIQUE INDEX ix_audiobook_para_book_idx ON public.audiobook_paragraphs USING btree (audiobook_id, paragraph_index);
CREATE INDEX ix_audiobook_paragraphs_audiobook_id ON public.audiobook_paragraphs USING btree (audiobook_id);


-- public.audiobook_sentences definition

-- Drop table

-- DROP TABLE public.audiobook_sentences;

CREATE TABLE public.audiobook_sentences (
	id serial4 NOT NULL,
	audiobook_id int4 NOT NULL,
	sentence_index int4 NOT NULL,
	section_index int4 NOT NULL,
	index_in_section int4 NOT NULL,
	content_ja text NOT NULL,
	content_vi text NULL,
	sentence_type varchar(20) NOT NULL,
	audio_file_path varchar(500) NULL,
	audio_duration_ms int4 NULL,
	bunsetsu_cache jsonb NULL,
	bunsetsu_cached_at timestamp NULL,
	audio_status varchar(20) DEFAULT 'pending'::character varying NULL,
	bunsetsu_status varchar(20) DEFAULT 'pending'::character varying NULL,
	CONSTRAINT pk_audiobook_sentences PRIMARY KEY (id),
	CONSTRAINT fk_audiobook_sentences_audiobook_id_audiobooks FOREIGN KEY (audiobook_id) REFERENCES public.audiobooks(id) ON DELETE CASCADE
);
CREATE UNIQUE INDEX ix_audiobook_sent_book_idx ON public.audiobook_sentences USING btree (audiobook_id, sentence_index);
CREATE INDEX ix_audiobook_sent_book_section ON public.audiobook_sentences USING btree (audiobook_id, section_index);
CREATE INDEX ix_audiobook_sentences_audiobook_id ON public.audiobook_sentences USING btree (audiobook_id);


-- public.authentication_sessions definition

-- Drop table

-- DROP TABLE public.authentication_sessions;

CREATE TABLE public.authentication_sessions (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	access_token_hash varchar NOT NULL,
	refresh_token_hash varchar NULL,
	expires_at timestamp NOT NULL,
	requires_2fa bool NULL,
	is_2fa_verified bool NULL,
	two_fa_method varchar NULL,
	user_agent text NULL,
	ip_address varchar NULL,
	status text NULL,
	created_at timestamp NULL,
	last_activity timestamp NULL,
	device_id text NULL,
	device_name text NULL,
	device_type text NULL,
	CONSTRAINT pk_authentication_sessions PRIMARY KEY (id),
	CONSTRAINT fk_authentication_sessions_user_id_users FOREIGN KEY (user_id) REFERENCES public.users(id)
);


-- public.blog_posts definition

-- Drop table

-- DROP TABLE public.blog_posts;

CREATE TABLE public.blog_posts (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	category_id int4 NULL,
	title varchar(255) NOT NULL,
	"content" text NOT NULL,
	status varchar(50) DEFAULT 'approved'::character varying NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp DEFAULT now() NOT NULL,
	is_24h bool DEFAULT false NOT NULL,
	is_deleted bool DEFAULT false NOT NULL,
	views_count int4 DEFAULT 0 NOT NULL,
	slug varchar(255) NOT NULL,
	blog_type varchar(50) DEFAULT 'post'::character varying NOT NULL,
	poll_type varchar(20) NULL,
	poll_expires_at timestamp NULL,
	is_pinned bool DEFAULT false NOT NULL,
	pinned_at timestamp NULL,
	pinned_by text NULL,
	pin_order int4 DEFAULT 0 NULL,
	CONSTRAINT pk_blog_posts PRIMARY KEY (id),
	CONSTRAINT uq_blog_posts_slug UNIQUE (slug),
	CONSTRAINT fk_blog_posts_category_id_blog_categories FOREIGN KEY (category_id) REFERENCES public.blog_categories(id)
);


-- public.blog_reactions definition

-- Drop table

-- DROP TABLE public.blog_reactions;

CREATE TABLE public.blog_reactions (
	id serial4 NOT NULL,
	post_id int4 NULL,
	user_id text NOT NULL,
	"type" varchar(50) NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp DEFAULT now() NOT NULL,
	source_type varchar(20) NOT NULL,
	source_id int4 NOT NULL,
	CONSTRAINT pk_blog_reactions PRIMARY KEY (id),
	CONSTRAINT unique_post_user_reaction UNIQUE (post_id, user_id),
	CONSTRAINT unique_source_user_reaction UNIQUE (source_type, source_id, user_id),
	CONSTRAINT fk_blog_reactions_post_id_blog_posts FOREIGN KEY (post_id) REFERENCES public.blog_posts(id)
);


-- public.blog_reports definition

-- Drop table

-- DROP TABLE public.blog_reports;

CREATE TABLE public.blog_reports (
	id serial4 NOT NULL,
	post_id int4 NOT NULL,
	reporter_user_id text NULL,
	reporter_email varchar(255) NULL,
	report_type varchar(150) NOT NULL,
	report_category varchar(100) NULL,
	description text NOT NULL,
	evidence_urls text NULL,
	copyright_owner varchar(255) NULL,
	copyrighted_work_description text NULL,
	original_work_url varchar(500) NULL,
	good_faith_statement bool DEFAULT false NULL,
	accuracy_statement bool DEFAULT false NULL,
	perjury_statement bool DEFAULT false NULL,
	status varchar(50) DEFAULT 'pending'::character varying NOT NULL,
	admin_notes text NULL,
	resolution varchar(100) NULL,
	processed_by text NULL,
	processed_at timestamp NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp DEFAULT now() NOT NULL,
	counter_notice_received bool DEFAULT false NULL,
	counter_notice_at timestamp NULL,
	restore_content_at timestamp NULL,
	CONSTRAINT pk_blog_reports PRIMARY KEY (id),
	CONSTRAINT unique_reporter_post_type UNIQUE (post_id, reporter_email, report_type),
	CONSTRAINT fk_blog_reports_post_id_blog_posts FOREIGN KEY (post_id) REFERENCES public.blog_posts(id)
);


-- public.blog_shares definition

-- Drop table

-- DROP TABLE public.blog_shares;

CREATE TABLE public.blog_shares (
	id serial4 NOT NULL,
	post_id int4 NOT NULL,
	user_id text NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	CONSTRAINT pk_blog_shares PRIMARY KEY (id),
	CONSTRAINT unique_post_user_share UNIQUE (post_id, user_id),
	CONSTRAINT fk_blog_shares_post_id_blog_posts FOREIGN KEY (post_id) REFERENCES public.blog_posts(id)
);


-- public.blog_views definition

-- Drop table

-- DROP TABLE public.blog_views;

CREATE TABLE public.blog_views (
	id serial4 NOT NULL,
	post_id int4 NOT NULL,
	user_id text NULL,
	device_id int4 NULL,
	viewed_at timestamp DEFAULT now() NOT NULL,
	CONSTRAINT limit_view_rate UNIQUE (post_id, user_id, device_id),
	CONSTRAINT pk_blog_views PRIMARY KEY (id),
	CONSTRAINT fk_blog_views_device_id_blog_user_access_devices FOREIGN KEY (device_id) REFERENCES public.blog_user_access_devices(id),
	CONSTRAINT fk_blog_views_post_id_blog_posts FOREIGN KEY (post_id) REFERENCES public.blog_posts(id)
);


-- public.class_assignments definition

-- Drop table

-- DROP TABLE public.class_assignments;

CREATE TABLE public.class_assignments (
	id serial4 NOT NULL,
	class_id int4 NOT NULL,
	flashcard_list_id int4 NULL,
	title varchar(200) NOT NULL,
	description text NULL,
	start_index int4 NULL,
	end_index int4 NULL,
	question_types text NOT NULL,
	questions_per_attempt int4 NOT NULL,
	deadline timestamptz NULL,
	max_attempts int4 NULL,
	shuffle_questions bool DEFAULT true NOT NULL,
	shuffle_options bool DEFAULT true NOT NULL,
	show_correct_answer bool DEFAULT true NOT NULL,
	passing_score int4 NULL,
	status varchar(20) NOT NULL,
	tenant_id int4 NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamptz NULL,
	updated_by text NULL,
	flashcard_ids text NULL,
	content_type varchar(50) NULL,
	content_id int4 NULL,
	time_limit_minutes int4 NULL,
	assignment_group_id varchar(36) NULL,
	CONSTRAINT pk_class_assignments PRIMARY KEY (id),
	CONSTRAINT fk_class_assignments_class_id_classes FOREIGN KEY (class_id) REFERENCES public.classes(class_id) ON DELETE CASCADE
);
CREATE INDEX ix_class_assignments_assignment_group_id ON public.class_assignments USING btree (assignment_group_id);
CREATE INDEX ix_class_assignments_class_id ON public.class_assignments USING btree (class_id);
CREATE INDEX ix_class_assignments_content_id ON public.class_assignments USING btree (content_id);
CREATE INDEX ix_class_assignments_content_type ON public.class_assignments USING btree (content_type);
CREATE INDEX ix_class_assignments_flashcard_list_id ON public.class_assignments USING btree (flashcard_list_id);
CREATE INDEX ix_class_assignments_id ON public.class_assignments USING btree (id);
CREATE INDEX ix_class_assignments_is_deleted ON public.class_assignments USING btree (is_deleted);
CREATE INDEX ix_class_assignments_status ON public.class_assignments USING btree (status);


-- public.class_comments definition

-- Drop table

-- DROP TABLE public.class_comments;

CREATE TABLE public.class_comments (
	id serial4 NOT NULL,
	class_id int4 NOT NULL,
	user_id text NOT NULL,
	"content" text NOT NULL,
	parent_comment_id int4 NULL,
	is_pinned bool DEFAULT false NOT NULL,
	is_announcement bool DEFAULT false NOT NULL,
	attachments text NULL,
	tenant_id int4 NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamptz NULL,
	updated_by text NULL,
	CONSTRAINT pk_class_comments PRIMARY KEY (id),
	CONSTRAINT fk_class_comments_class_id_classes FOREIGN KEY (class_id) REFERENCES public.classes(class_id) ON DELETE CASCADE,
	CONSTRAINT fk_class_comments_parent_comment_id_class_comments FOREIGN KEY (parent_comment_id) REFERENCES public.class_comments(id) ON DELETE CASCADE
);
CREATE INDEX ix_class_comments_class_id ON public.class_comments USING btree (class_id);
CREATE INDEX ix_class_comments_id ON public.class_comments USING btree (id);
CREATE INDEX ix_class_comments_is_deleted ON public.class_comments USING btree (is_deleted);
CREATE INDEX ix_class_comments_parent_comment_id ON public.class_comments USING btree (parent_comment_id);
CREATE INDEX ix_class_comments_user_id ON public.class_comments USING btree (user_id);


-- public.class_content_sets definition

-- Drop table

-- DROP TABLE public.class_content_sets;

CREATE TABLE public.class_content_sets (
	id serial4 NOT NULL,
	class_id int4 NOT NULL,
	content_set_id int4 NULL,
	assigned_date date DEFAULT CURRENT_DATE NOT NULL,
	is_required bool DEFAULT true NOT NULL,
	order_index int4 DEFAULT 0 NOT NULL,
	status varchar(20) NOT NULL,
	start_date date NULL,
	end_date date NULL,
	notes text NULL,
	tenant_id int4 NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamptz NULL,
	updated_by text NULL,
	content_type varchar(50) NOT NULL,
	content_id int4 NOT NULL,
	CONSTRAINT pk_class_content_sets PRIMARY KEY (id),
	CONSTRAINT uq_class_content UNIQUE (class_id, content_type, content_id),
	CONSTRAINT fk_class_content_sets_class_id_classes FOREIGN KEY (class_id) REFERENCES public.classes(class_id) ON DELETE CASCADE,
	CONSTRAINT fk_class_content_sets_content_set_id_content_sets FOREIGN KEY (content_set_id) REFERENCES public.content_sets(set_id) ON DELETE SET NULL
);
CREATE INDEX ix_class_content_sets_class_id ON public.class_content_sets USING btree (class_id);
CREATE INDEX ix_class_content_sets_content_id ON public.class_content_sets USING btree (content_id);
CREATE INDEX ix_class_content_sets_content_set_id ON public.class_content_sets USING btree (content_set_id);
CREATE INDEX ix_class_content_sets_content_type ON public.class_content_sets USING btree (content_type);
CREATE INDEX ix_class_content_sets_id ON public.class_content_sets USING btree (id);
CREATE INDEX ix_class_content_sets_is_deleted ON public.class_content_sets USING btree (is_deleted);
CREATE INDEX ix_class_content_sets_status ON public.class_content_sets USING btree (status);


-- public.class_lessons definition

-- Drop table

-- DROP TABLE public.class_lessons;

CREATE TABLE public.class_lessons (
	id serial4 NOT NULL,
	class_id int4 NOT NULL,
	lesson_id int4 NOT NULL,
	order_index int4 DEFAULT 0 NOT NULL,
	scheduled_date date NULL,
	status varchar(20) DEFAULT 'not_started'::character varying NOT NULL,
	started_date date NULL,
	completed_date date NULL,
	total_sessions_planned int4 DEFAULT 0 NOT NULL,
	completed_sessions int4 DEFAULT 0 NOT NULL,
	notes text NULL,
	completion_notes text NULL,
	tenant_id int4 NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamptz NULL,
	updated_by text NULL,
	CONSTRAINT pk_class_lessons PRIMARY KEY (id),
	CONSTRAINT uq_class_lesson UNIQUE (class_id, lesson_id),
	CONSTRAINT fk_class_lessons_class_id_classes FOREIGN KEY (class_id) REFERENCES public.classes(class_id) ON DELETE CASCADE,
	CONSTRAINT fk_class_lessons_lesson_id_lessons FOREIGN KEY (lesson_id) REFERENCES public.lessons(lesson_id) ON DELETE CASCADE
);
CREATE INDEX ix_class_lessons_class_id ON public.class_lessons USING btree (class_id);
CREATE INDEX ix_class_lessons_id ON public.class_lessons USING btree (id);
CREATE INDEX ix_class_lessons_is_deleted ON public.class_lessons USING btree (is_deleted);
CREATE INDEX ix_class_lessons_lesson_id ON public.class_lessons USING btree (lesson_id);
CREATE INDEX ix_class_lessons_order_index ON public.class_lessons USING btree (order_index);
CREATE INDEX ix_class_lessons_status ON public.class_lessons USING btree (status);


-- public.class_progress definition

-- Drop table

-- DROP TABLE public.class_progress;

CREATE TABLE public.class_progress (
	id serial4 NOT NULL,
	class_id int4 NOT NULL,
	total_lessons int4 DEFAULT 0 NOT NULL,
	completed_lessons int4 DEFAULT 0 NOT NULL,
	in_progress_lessons int4 DEFAULT 0 NOT NULL,
	current_lesson_id int4 NULL,
	current_class_lesson_id int4 NULL,
	total_sessions_held int4 DEFAULT 0 NOT NULL,
	total_sessions_planned int4 DEFAULT 0 NOT NULL,
	first_session_date date NULL,
	last_session_date date NULL,
	next_session_date date NULL,
	completion_percentage int4 DEFAULT 0 NOT NULL,
	estimated_completion_date date NULL,
	average_attendance_rate int4 NULL,
	total_students_enrolled int4 DEFAULT 0 NOT NULL,
	tenant_id int4 NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamptz NULL,
	updated_by text NULL,
	CONSTRAINT pk_class_progress PRIMARY KEY (id),
	CONSTRAINT fk_class_progress_class_id_classes FOREIGN KEY (class_id) REFERENCES public.classes(class_id) ON DELETE CASCADE,
	CONSTRAINT fk_class_progress_current_class_lesson_id_class_lessons FOREIGN KEY (current_class_lesson_id) REFERENCES public.class_lessons(id) ON DELETE SET NULL,
	CONSTRAINT fk_class_progress_current_lesson_id_lessons FOREIGN KEY (current_lesson_id) REFERENCES public.lessons(lesson_id) ON DELETE SET NULL
);
CREATE UNIQUE INDEX ix_class_progress_class_id ON public.class_progress USING btree (class_id);
CREATE INDEX ix_class_progress_current_class_lesson_id ON public.class_progress USING btree (current_class_lesson_id);
CREATE INDEX ix_class_progress_current_lesson_id ON public.class_progress USING btree (current_lesson_id);
CREATE INDEX ix_class_progress_id ON public.class_progress USING btree (id);
CREATE INDEX ix_class_progress_is_deleted ON public.class_progress USING btree (is_deleted);
CREATE INDEX ix_class_progress_next_session_date ON public.class_progress USING btree (next_session_date);


-- public.class_schedules definition

-- Drop table

-- DROP TABLE public.class_schedules;

CREATE TABLE public.class_schedules (
	id serial4 NOT NULL,
	class_id int4 NOT NULL,
	title varchar(200) NULL,
	description text NULL,
	"location" text NULL,
	start_time timestamp NOT NULL,
	end_time timestamp NULL,
	duration_minutes int4 NULL,
	is_recurring bool DEFAULT false NOT NULL,
	recurrence_type varchar(20) NULL,
	recurrence_config text NULL,
	recurrence_end_date timestamp NULL,
	parent_schedule_id int4 NULL,
	original_start_time timestamp NULL,
	is_recurring_master bool DEFAULT false NOT NULL,
	status varchar(20) NOT NULL,
	color varchar(20) NULL,
	reminder_minutes int4 NULL,
	notes text NULL,
	tenant_id int4 NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamptz NULL,
	updated_by text NULL,
	CONSTRAINT pk_class_schedules PRIMARY KEY (id),
	CONSTRAINT fk_class_schedules_class_id_classes FOREIGN KEY (class_id) REFERENCES public.classes(class_id) ON DELETE CASCADE,
	CONSTRAINT fk_class_schedules_parent_schedule_id_class_schedules FOREIGN KEY (parent_schedule_id) REFERENCES public.class_schedules(id) ON DELETE CASCADE
);
CREATE INDEX ix_class_schedules_class_id ON public.class_schedules USING btree (class_id);
CREATE INDEX ix_class_schedules_id ON public.class_schedules USING btree (id);
CREATE INDEX ix_class_schedules_is_deleted ON public.class_schedules USING btree (is_deleted);
CREATE INDEX ix_class_schedules_parent_schedule_id ON public.class_schedules USING btree (parent_schedule_id);
CREATE INDEX ix_class_schedules_status ON public.class_schedules USING btree (status);


-- public.class_students definition

-- Drop table

-- DROP TABLE public.class_students;

CREATE TABLE public.class_students (
	id serial4 NOT NULL,
	class_id int4 NOT NULL,
	student_id text NOT NULL,
	enrollment_date date DEFAULT CURRENT_DATE NOT NULL,
	status varchar(20) NOT NULL,
	payment_status varchar(20) NOT NULL,
	notes text NULL,
	payment_amount int4 NULL,
	payment_due_date date NULL,
	attendance_rate int4 NULL,
	completion_rate int4 NULL,
	tenant_id int4 NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamptz NULL,
	updated_by text NULL,
	CONSTRAINT pk_class_students PRIMARY KEY (id),
	CONSTRAINT uq_class_student UNIQUE (class_id, student_id),
	CONSTRAINT fk_class_students_class_id_classes FOREIGN KEY (class_id) REFERENCES public.classes(class_id) ON DELETE CASCADE
);
CREATE INDEX ix_class_students_class_id ON public.class_students USING btree (class_id);
CREATE INDEX ix_class_students_id ON public.class_students USING btree (id);
CREATE INDEX ix_class_students_is_deleted ON public.class_students USING btree (is_deleted);
CREATE INDEX ix_class_students_status ON public.class_students USING btree (status);
CREATE INDEX ix_class_students_student_id ON public.class_students USING btree (student_id);


-- public.content_set_items definition

-- Drop table

-- DROP TABLE public.content_set_items;

CREATE TABLE public.content_set_items (
	id serial4 NOT NULL,
	content_set_id int4 NOT NULL,
	content_type varchar(50) NOT NULL,
	content_id int4 NOT NULL,
	order_index int4 DEFAULT 0 NOT NULL,
	notes text NULL,
	is_optional bool DEFAULT false NOT NULL,
	tenant_id int4 NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamptz NULL,
	updated_by text NULL,
	CONSTRAINT pk_content_set_items PRIMARY KEY (id),
	CONSTRAINT uq_content_set_item UNIQUE (content_set_id, content_type, content_id),
	CONSTRAINT fk_content_set_items_content_set_id_content_sets FOREIGN KEY (content_set_id) REFERENCES public.content_sets(set_id) ON DELETE CASCADE
);
CREATE INDEX ix_content_set_items_content_id ON public.content_set_items USING btree (content_id);
CREATE INDEX ix_content_set_items_content_set_id ON public.content_set_items USING btree (content_set_id);
CREATE INDEX ix_content_set_items_content_type ON public.content_set_items USING btree (content_type);
CREATE INDEX ix_content_set_items_id ON public.content_set_items USING btree (id);
CREATE INDEX ix_content_set_items_is_deleted ON public.content_set_items USING btree (is_deleted);


-- public.curriculum_node definition

-- Drop table

-- DROP TABLE public.curriculum_node;

CREATE TABLE public.curriculum_node (
	id serial4 NOT NULL,
	curriculum_id int4 NOT NULL,
	parent_id int4 NULL,
	node_type text NULL,
	node_title text NULL,
	note_title_jp text NULL,
	node_definition text NULL,
	node_definition_jp text NULL,
	node_content text NULL,
	node_content_jp text NULL,
	node_extra text NULL,
	node_extra_jp text NULL,
	node_notes text NULL,
	node_notes_jp text NULL,
	node_conclusion text NULL,
	node_conclusion_jp text NULL,
	tenant_id text NULL,
	is_deleted bool NOT NULL,
	is_active bool NOT NULL,
	created_at timestamp NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	access_level text DEFAULT 'free'::text NOT NULL,
	order_index int4 DEFAULT 0 NOT NULL,
	CONSTRAINT pk_curriculum_node PRIMARY KEY (id),
	CONSTRAINT fk_curriculum_node_curriculum_id_curricula FOREIGN KEY (curriculum_id) REFERENCES public.curricula(id),
	CONSTRAINT fk_curriculum_node_parent_id_curriculum_node FOREIGN KEY (parent_id) REFERENCES public.curriculum_node(id)
);


-- public.curriculum_node_content definition

-- Drop table

-- DROP TABLE public.curriculum_node_content;

CREATE TABLE public.curriculum_node_content (
	id serial4 NOT NULL,
	curriculum_node_id int4 NOT NULL,
	content_type text NULL,
	content_id text NULL,
	tenant_id text NULL,
	is_deleted bool NOT NULL,
	is_active bool NOT NULL,
	created_at timestamp NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	order_index int4 DEFAULT 0 NULL,
	CONSTRAINT pk_curriculum_node_content PRIMARY KEY (id),
	CONSTRAINT fk_curriculum_node_content_curriculum_node_id_curriculum_node FOREIGN KEY (curriculum_node_id) REFERENCES public.curriculum_node(id)
);


-- public.custom_curriculum_content definition

-- Drop table

-- DROP TABLE public.custom_curriculum_content;

CREATE TABLE public.custom_curriculum_content (
	id serial4 NOT NULL,
	curriculum_id int4 NOT NULL,
	content_type text NOT NULL,
	content_id text NOT NULL,
	order_index int4 NOT NULL,
	tenant_id text NULL,
	is_deleted bool NOT NULL,
	is_active bool NOT NULL,
	created_at timestamp NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	CONSTRAINT custom_curriculum_content_pkey PRIMARY KEY (id),
	CONSTRAINT custom_curriculum_content_curriculum_id_fkey FOREIGN KEY (curriculum_id) REFERENCES public.custom_curricula(id) ON DELETE CASCADE
);


-- public.custom_curriculum_node definition

-- Drop table

-- DROP TABLE public.custom_curriculum_node;

CREATE TABLE public.custom_curriculum_node (
	id serial4 NOT NULL,
	curriculum_id int4 NOT NULL,
	parent_id int4 NULL,
	node_type text NULL,
	node_title text NULL,
	note_title_jp text NULL,
	node_definition text NULL,
	node_definition_jp text NULL,
	node_content text NULL,
	node_content_jp text NULL,
	node_extra text NULL,
	node_extra_jp text NULL,
	node_notes text NULL,
	node_notes_jp text NULL,
	node_conclusion text NULL,
	node_conclusion_jp text NULL,
	tenant_id text NULL,
	is_deleted bool NOT NULL,
	is_active bool NOT NULL,
	created_at timestamp NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	CONSTRAINT pk_custom_curriculum_node PRIMARY KEY (id),
	CONSTRAINT fk_custom_curriculum_node_curriculum_id_custom_curricula FOREIGN KEY (curriculum_id) REFERENCES public.custom_curricula(id),
	CONSTRAINT fk_custom_curriculum_node_parent_id_custom_curriculum_node FOREIGN KEY (parent_id) REFERENCES public.custom_curriculum_node(id)
);


-- public.custom_curriculum_node_content definition

-- Drop table

-- DROP TABLE public.custom_curriculum_node_content;

CREATE TABLE public.custom_curriculum_node_content (
	id serial4 NOT NULL,
	curriculum_node_id int4 NOT NULL,
	content_type text NULL,
	content_id text NULL,
	tenant_id text NULL,
	is_deleted bool NOT NULL,
	is_active bool NOT NULL,
	created_at timestamp NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	order_index int4 NOT NULL,
	CONSTRAINT pk_custom_curriculum_node_content PRIMARY KEY (id),
	CONSTRAINT fk_custom_curriculum_node_content_curriculum_node_id_cu_a7e5 FOREIGN KEY (curriculum_node_id) REFERENCES public.custom_curriculum_node(id)
);


-- public.custom_grammar_structure definition

-- Drop table

-- DROP TABLE public.custom_grammar_structure;

CREATE TABLE public.custom_grammar_structure (
	id serial4 NOT NULL,
	user_id text NULL,
	grammar_id int4 NOT NULL,
	form text NOT NULL,
	"usage" text NULL,
	order_index int4 DEFAULT 0 NOT NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	CONSTRAINT pk_custom_grammar_structure PRIMARY KEY (id),
	CONSTRAINT fk_custom_grammar_structure_grammar_id_custom_grammar FOREIGN KEY (grammar_id) REFERENCES public.custom_grammar(id)
);


-- public.email_audit_log definition

-- Drop table

-- DROP TABLE public.email_audit_log;

CREATE TABLE public.email_audit_log (
	id serial4 NOT NULL,
	user_id text NULL,
	email_type varchar(50) NOT NULL,
	recipient_email text NOT NULL,
	status varchar(20) NOT NULL,
	provider varchar(50) NULL,
	provider_message_id varchar(255) NULL,
	error_message text NULL,
	template_id varchar(100) NULL,
	metadata_json text NULL,
	sent_at timestamp NULL,
	created_at timestamp NOT NULL,
	ip_address varchar(45) NULL,
	user_agent text NULL,
	CONSTRAINT pk_email_audit_log PRIMARY KEY (id),
	CONSTRAINT fk_email_audit_log_user_id_users FOREIGN KEY (user_id) REFERENCES public.users(id)
);


-- public.email_verification_tokens definition

-- Drop table

-- DROP TABLE public.email_verification_tokens;

CREATE TABLE public.email_verification_tokens (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	"token" varchar(255) NOT NULL,
	email text NOT NULL,
	is_used bool NOT NULL,
	expires_at timestamp NOT NULL,
	created_at timestamp NOT NULL,
	used_at timestamp NULL,
	ip_address varchar(45) NULL,
	user_agent text NULL,
	CONSTRAINT pk_email_verification_tokens PRIMARY KEY (id),
	CONSTRAINT uq_email_verification_tokens_token UNIQUE (token),
	CONSTRAINT fk_email_verification_tokens_user_id_users FOREIGN KEY (user_id) REFERENCES public.users(id)
);


-- public.flashcards_list_cards definition

-- Drop table

-- DROP TABLE public.flashcards_list_cards;

CREATE TABLE public.flashcards_list_cards (
	id serial4 NOT NULL,
	flashcards_list_id int4 NULL,
	flashcard_id int4 NULL,
	order_index int4 DEFAULT 0 NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	created_by text NULL,
	CONSTRAINT pk_flashcards_list_cards PRIMARY KEY (id),
	CONSTRAINT fk_flashcards_list_cards_flashcard_id_flashcards FOREIGN KEY (flashcard_id) REFERENCES public.flashcards(id),
	CONSTRAINT fk_flashcards_list_cards_flashcards_list_id_flashcards_list FOREIGN KEY (flashcards_list_id) REFERENCES public.flashcards_list(id)
);
CREATE INDEX ix_flc_flashcard ON public.flashcards_list_cards USING btree (flashcard_id);
CREATE INDEX ix_flc_list_order ON public.flashcards_list_cards USING btree (flashcards_list_id, order_index);

-- Table Triggers

create trigger trg_flashcards_list_cards_delete after
delete
    on
    public.flashcards_list_cards for each row execute function update_flashcards_list_card_count();
create trigger trg_flashcards_list_cards_insert after
insert
    on
    public.flashcards_list_cards for each row execute function update_flashcards_list_card_count();


-- public.flashcards_reviews definition

-- Drop table

-- DROP TABLE public.flashcards_reviews;

CREATE TABLE public.flashcards_reviews (
	id serial4 NOT NULL,
	flashcard_id int4 NULL,
	user_id text NOT NULL,
	reviewed_at timestamp DEFAULT now() NOT NULL,
	rating int4 NOT NULL,
	review_duration_ms int4 NULL,
	scheduled_interval int4 NULL,
	actual_interval int4 NULL,
	response_time_ms int4 NULL,
	review_type varchar(20) NULL,
	stability_before float8 NULL,
	difficulty_before float8 NULL,
	stability_after float8 NULL,
	difficulty_after float8 NULL,
	goal_id int4 NULL,
	study_goal_set_id int4 NULL,
	session_id int4 NULL,
	study_goal_progress_id int4 NULL,
	practice_type varchar(20) NULL,
	CONSTRAINT pk_flashcards_reviews PRIMARY KEY (id),
	CONSTRAINT fk_flashcards_reviews_flashcard_id_flashcards FOREIGN KEY (flashcard_id) REFERENCES public.flashcards(id)
);
CREATE INDEX idx_flashcards_reviews_flashcard_goal ON public.flashcards_reviews USING btree (flashcard_id, goal_id);
CREATE INDEX idx_flashcards_reviews_goal_set ON public.flashcards_reviews USING btree (goal_id, study_goal_set_id, flashcard_id);


-- public.game_best_scores definition

-- Drop table

-- DROP TABLE public.game_best_scores;

CREATE TABLE public.game_best_scores (
	id serial4 NOT NULL,
	user_id varchar(255) NOT NULL,
	game_id int4 NOT NULL,
	difficulty varchar(20) DEFAULT 'default'::character varying NOT NULL,
	best_score int4 DEFAULT 0 NOT NULL,
	best_time_seconds int4 NULL,
	best_moves int4 NULL,
	total_plays int4 DEFAULT 1 NOT NULL,
	last_played_at timestamp DEFAULT now() NOT NULL,
	first_played_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp DEFAULT now() NOT NULL,
	CONSTRAINT pk_game_best_scores PRIMARY KEY (id),
	CONSTRAINT uq_user_game_difficulty UNIQUE (user_id, game_id, difficulty),
	CONSTRAINT fk_game_best_scores_game_id_games FOREIGN KEY (game_id) REFERENCES public.games(id) ON DELETE CASCADE
);
CREATE INDEX idx_game_difficulty_score ON public.game_best_scores USING btree (game_id, difficulty, best_score);
CREATE INDEX idx_user_games ON public.game_best_scores USING btree (user_id, game_id);
CREATE INDEX ix_game_best_scores_user_id ON public.game_best_scores USING btree (user_id);


-- public.garden_settings definition

-- Drop table

-- DROP TABLE public.garden_settings;

CREATE TABLE public.garden_settings (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	zoom_level float8 DEFAULT 0.8 NOT NULL,
	joystick_left float8 DEFAULT 20.0 NOT NULL,
	joystick_bottom float8 DEFAULT 20.0 NOT NULL,
	joystick_opacity float8 DEFAULT 0.5 NOT NULL,
	joystick_size float8 DEFAULT 120.0 NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp NULL,
	CONSTRAINT pk_garden_settings PRIMARY KEY (id),
	CONSTRAINT fk_garden_settings_user_id_users FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE
);
CREATE UNIQUE INDEX ix_garden_settings_user_id ON public.garden_settings USING btree (user_id);


-- public.google_accounts definition

-- Drop table

-- DROP TABLE public.google_accounts;

CREATE TABLE public.google_accounts (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	google_user_id varchar(255) NOT NULL,
	email varchar(255) NOT NULL,
	google_access_token text NOT NULL,
	google_refresh_token text NOT NULL,
	token_expires_at timestamp NULL,
	nickname varchar(100) NULL,
	color varchar(7) DEFAULT '#3B82F6'::character varying NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	is_primary bool DEFAULT false NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp DEFAULT now() NOT NULL,
	last_synced_at timestamp NULL,
	CONSTRAINT google_accounts_pkey PRIMARY KEY (id),
	CONSTRAINT google_accounts_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE
);
CREATE INDEX ix_google_accounts_id ON public.google_accounts USING btree (id);
CREATE INDEX ix_google_accounts_user_id ON public.google_accounts USING btree (user_id);


-- public.grammar_structure definition

-- Drop table

-- DROP TABLE public.grammar_structure;

CREATE TABLE public.grammar_structure (
	id serial4 NOT NULL,
	user_id text NULL,
	grammar_id int4 NOT NULL,
	form text NOT NULL,
	"usage" text NULL,
	order_index int4 DEFAULT 0 NOT NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	CONSTRAINT pk_grammar_structure PRIMARY KEY (id),
	CONSTRAINT fk_grammar_structure_grammar_id_grammar FOREIGN KEY (grammar_id) REFERENCES public.grammar(id)
);


-- public.khoa_cu_exam_schedules definition

-- Drop table

-- DROP TABLE public.khoa_cu_exam_schedules;

CREATE TABLE public.khoa_cu_exam_schedules (
	id serial4 NOT NULL,
	exam_type varchar(20) NOT NULL,
	jlpt_level varchar(5) NOT NULL,
	scheduled_at timestamp NOT NULL,
	registration_open_at timestamp NOT NULL,
	registration_close_at timestamp NOT NULL,
	max_participants int4 NOT NULL,
	duration_minutes int4 NOT NULL,
	num_questions int4 NOT NULL,
	status varchar(25) DEFAULT 'scheduled'::character varying NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp NULL,
	season_id int4 NULL,
	CONSTRAINT pk_khoa_cu_exam_schedules PRIMARY KEY (id),
	CONSTRAINT khoa_cu_exam_schedules_season_id_fkey FOREIGN KEY (season_id) REFERENCES public.khoa_cu_seasons(id)
);
CREATE INDEX ix_kc_schedule_at ON public.khoa_cu_exam_schedules USING btree (scheduled_at);
CREATE INDEX ix_kc_schedule_status ON public.khoa_cu_exam_schedules USING btree (status);
CREATE INDEX ix_kc_schedule_type_level ON public.khoa_cu_exam_schedules USING btree (exam_type, jlpt_level);


-- public.khoa_cu_exam_sessions definition

-- Drop table

-- DROP TABLE public.khoa_cu_exam_sessions;

CREATE TABLE public.khoa_cu_exam_sessions (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	exam_schedule_id int4 NOT NULL,
	device_id text NOT NULL,
	session_secret text NOT NULL,
	question_ids jsonb NOT NULL,
	started_at timestamp DEFAULT now() NOT NULL,
	submitted_at timestamp NULL,
	expires_at timestamp NOT NULL,
	total_questions int4 DEFAULT 0 NOT NULL,
	correct_answers int4 DEFAULT 0 NOT NULL,
	score float8 NULL,
	resume_count int4 DEFAULT 0 NOT NULL,
	time_spent_seconds int4 NULL,
	status varchar(20) DEFAULT 'in_progress'::character varying NOT NULL,
	behavioral_flags jsonb DEFAULT '{}'::jsonb NULL,
	CONSTRAINT pk_khoa_cu_exam_sessions PRIMARY KEY (id),
	CONSTRAINT uq_kc_session_user_exam UNIQUE (user_id, exam_schedule_id),
	CONSTRAINT fk_khoa_cu_exam_sessions_exam_schedule_id_khoa_cu_exam__3a3a FOREIGN KEY (exam_schedule_id) REFERENCES public.khoa_cu_exam_schedules(id) ON DELETE CASCADE,
	CONSTRAINT fk_khoa_cu_exam_sessions_user_id_users FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE
);
CREATE INDEX ix_kc_session_expires ON public.khoa_cu_exam_sessions USING btree (expires_at);
CREATE INDEX ix_kc_session_status ON public.khoa_cu_exam_sessions USING btree (status);
CREATE INDEX ix_kc_session_user ON public.khoa_cu_exam_sessions USING btree (user_id);


-- public.khoa_cu_leaderboard_entries definition

-- Drop table

-- DROP TABLE public.khoa_cu_leaderboard_entries;

CREATE TABLE public.khoa_cu_leaderboard_entries (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	board_type varchar(25) NOT NULL,
	jlpt_level varchar(5) NULL,
	period_key text NOT NULL,
	score float8 DEFAULT 0 NOT NULL,
	rank_position int4 NULL,
	exam_count int4 DEFAULT 0 NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp NULL,
	CONSTRAINT pk_khoa_cu_leaderboard_entries PRIMARY KEY (id),
	CONSTRAINT fk_khoa_cu_leaderboard_entries_user_id_users FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE
);
CREATE INDEX ix_kc_lb_rank ON public.khoa_cu_leaderboard_entries USING btree (board_type, period_key, rank_position);
CREATE INDEX ix_kc_lb_type_level_period ON public.khoa_cu_leaderboard_entries USING btree (board_type, jlpt_level, period_key);
CREATE INDEX ix_kc_lb_user ON public.khoa_cu_leaderboard_entries USING btree (user_id);


-- public.khoa_cu_point_transactions definition

-- Drop table

-- DROP TABLE public.khoa_cu_point_transactions;

CREATE TABLE public.khoa_cu_point_transactions (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	point_type varchar(5) NOT NULL,
	amount int4 NOT NULL,
	reason text NOT NULL,
	reference_id text NULL,
	balance_after int4 NOT NULL,
	idempotency_key varchar(100) NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	CONSTRAINT pk_khoa_cu_point_transactions PRIMARY KEY (id),
	CONSTRAINT uq_khoa_cu_point_transactions_idempotency_key UNIQUE (idempotency_key),
	CONSTRAINT fk_khoa_cu_point_transactions_user_id_users FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE
);
CREATE INDEX ix_kc_ptx_created ON public.khoa_cu_point_transactions USING btree (created_at);
CREATE INDEX ix_kc_ptx_idempotency ON public.khoa_cu_point_transactions USING btree (idempotency_key);
CREATE INDEX ix_kc_ptx_user ON public.khoa_cu_point_transactions USING btree (user_id);
CREATE INDEX ix_kc_ptx_user_type ON public.khoa_cu_point_transactions USING btree (user_id, point_type);


-- public.khoa_cu_season_progress definition

-- Drop table

-- DROP TABLE public.khoa_cu_season_progress;

CREATE TABLE public.khoa_cu_season_progress (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	season_id int4 NOT NULL,
	jlpt_level varchar(5) NOT NULL,
	season_points int4 DEFAULT 0 NOT NULL,
	thi_lang_count int4 DEFAULT 0 NOT NULL,
	thi_huong_count int4 DEFAULT 0 NOT NULL,
	thi_hoi_count int4 DEFAULT 0 NOT NULL,
	thi_dinh_count int4 DEFAULT 0 NOT NULL,
	pass_claimed jsonb DEFAULT '[]'::jsonb NULL,
	shop_purchased jsonb DEFAULT '[]'::jsonb NULL,
	is_deleted bool DEFAULT false NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp NULL,
	CONSTRAINT khoa_cu_season_progress_pkey PRIMARY KEY (id),
	CONSTRAINT uq_user_season UNIQUE (user_id, season_id),
	CONSTRAINT khoa_cu_season_progress_season_id_fkey FOREIGN KEY (season_id) REFERENCES public.khoa_cu_seasons(id),
	CONSTRAINT khoa_cu_season_progress_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id)
);
CREATE INDEX ix_kc_sp_leaderboard ON public.khoa_cu_season_progress USING btree (season_id, season_points DESC);
CREATE INDEX ix_kc_sp_season_level ON public.khoa_cu_season_progress USING btree (season_id, jlpt_level);
CREATE INDEX ix_kc_sp_user ON public.khoa_cu_season_progress USING btree (user_id);


-- public.khoa_cu_user_achievements definition

-- Drop table

-- DROP TABLE public.khoa_cu_user_achievements;

CREATE TABLE public.khoa_cu_user_achievements (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	achievement_id int4 NOT NULL,
	unlocked_at timestamp DEFAULT now() NOT NULL,
	reward_claimed bool DEFAULT false NOT NULL,
	claimed_at timestamp NULL,
	CONSTRAINT pk_khoa_cu_user_achievements PRIMARY KEY (id),
	CONSTRAINT uq_kc_user_achievement UNIQUE (user_id, achievement_id),
	CONSTRAINT fk_khoa_cu_user_achievements_achievement_id_khoa_cu_ach_6ee1 FOREIGN KEY (achievement_id) REFERENCES public.khoa_cu_achievements(id) ON DELETE CASCADE,
	CONSTRAINT fk_khoa_cu_user_achievements_user_id_users FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE
);
CREATE INDEX ix_kc_uachievement_user ON public.khoa_cu_user_achievements USING btree (user_id);


-- public.khoa_cu_user_levels definition

-- Drop table

-- DROP TABLE public.khoa_cu_user_levels;

CREATE TABLE public.khoa_cu_user_levels (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	jlpt_level varchar(5) DEFAULT 'N5'::character varying NOT NULL,
	placement_test_score float8 NULL,
	level_changed_at timestamp NULL,
	current_rank varchar(20) DEFAULT 'mong_sinh'::character varying NOT NULL,
	rank_updated_at timestamp NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp NULL,
	CONSTRAINT pk_khoa_cu_user_levels PRIMARY KEY (id),
	CONSTRAINT fk_khoa_cu_user_levels_user_id_users FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE
);
CREATE UNIQUE INDEX ix_khoa_cu_user_levels_user_id ON public.khoa_cu_user_levels USING btree (user_id);


-- public.khoa_cu_user_quests definition

-- Drop table

-- DROP TABLE public.khoa_cu_user_quests;

CREATE TABLE public.khoa_cu_user_quests (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	quest_template_id int4 NOT NULL,
	quest_type varchar(20) NOT NULL,
	period_start timestamp NOT NULL,
	period_end timestamp NOT NULL,
	current_progress int4 DEFAULT 0 NOT NULL,
	target_value int4 NOT NULL,
	is_completed bool DEFAULT false NOT NULL,
	completed_at timestamp NULL,
	reward_claimed bool DEFAULT false NOT NULL,
	claimed_at timestamp NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	CONSTRAINT pk_khoa_cu_user_quests PRIMARY KEY (id),
	CONSTRAINT fk_khoa_cu_user_quests_quest_template_id_khoa_cu_quest__821e FOREIGN KEY (quest_template_id) REFERENCES public.khoa_cu_quest_templates(id) ON DELETE CASCADE,
	CONSTRAINT fk_khoa_cu_user_quests_user_id_users FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE
);
CREATE INDEX ix_kc_uquest_period ON public.khoa_cu_user_quests USING btree (period_start, period_end);
CREATE INDEX ix_kc_uquest_user ON public.khoa_cu_user_quests USING btree (user_id);
CREATE INDEX ix_kc_uquest_user_type ON public.khoa_cu_user_quests USING btree (user_id, quest_type);


-- public.lesson_content definition

-- Drop table

-- DROP TABLE public.lesson_content;

CREATE TABLE public.lesson_content (
	id serial4 NOT NULL,
	lesson_id int4 NOT NULL,
	section_name varchar(200) NOT NULL,
	section_order int4 DEFAULT 0 NOT NULL,
	content_type varchar(50) NOT NULL,
	content_id int4 NOT NULL,
	item_order int4 DEFAULT 0 NOT NULL,
	is_required bool DEFAULT true NOT NULL,
	time_allocation int4 NULL,
	notes text NULL,
	tenant_id int4 NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamptz NULL,
	updated_by text NULL,
	CONSTRAINT pk_lesson_content PRIMARY KEY (id),
	CONSTRAINT fk_lesson_content_lesson_id_lessons FOREIGN KEY (lesson_id) REFERENCES public.lessons(lesson_id) ON DELETE CASCADE
);
CREATE INDEX ix_lesson_content_content_id ON public.lesson_content USING btree (content_id);
CREATE INDEX ix_lesson_content_content_type ON public.lesson_content USING btree (content_type);
CREATE INDEX ix_lesson_content_id ON public.lesson_content USING btree (id);
CREATE INDEX ix_lesson_content_is_deleted ON public.lesson_content USING btree (is_deleted);
CREATE INDEX ix_lesson_content_lesson_id ON public.lesson_content USING btree (lesson_id);
CREATE INDEX ix_lesson_content_section_name ON public.lesson_content USING btree (section_name);
CREATE INDEX ix_lesson_content_section_order ON public.lesson_content USING btree (section_order);


-- public.lesson_sessions definition

-- Drop table

-- DROP TABLE public.lesson_sessions;

CREATE TABLE public.lesson_sessions (
	session_id serial4 NOT NULL,
	class_id int4 NOT NULL,
	lesson_id int4 NOT NULL,
	class_lesson_id int4 NULL,
	scheduled_date timestamptz NOT NULL,
	actual_start_time timestamptz NULL,
	actual_end_time timestamptz NULL,
	meeting_platform varchar(50) NOT NULL,
	meeting_link text NULL,
	meeting_password varchar(100) NULL,
	meeting_id varchar(100) NULL,
	"location" text NULL,
	session_status varchar(20) DEFAULT 'scheduled'::character varying NOT NULL,
	teacher_notes text NULL,
	cancellation_reason text NULL,
	recorded_url text NULL,
	recording_available bool DEFAULT false NOT NULL,
	attendance_taken bool DEFAULT false NOT NULL,
	tenant_id int4 NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamptz NULL,
	updated_by text NULL,
	CONSTRAINT pk_lesson_sessions PRIMARY KEY (session_id),
	CONSTRAINT fk_lesson_sessions_class_id_classes FOREIGN KEY (class_id) REFERENCES public.classes(class_id) ON DELETE CASCADE,
	CONSTRAINT fk_lesson_sessions_class_lesson_id_class_lessons FOREIGN KEY (class_lesson_id) REFERENCES public.class_lessons(id) ON DELETE CASCADE,
	CONSTRAINT fk_lesson_sessions_lesson_id_lessons FOREIGN KEY (lesson_id) REFERENCES public.lessons(lesson_id) ON DELETE CASCADE
);
CREATE INDEX ix_lesson_sessions_class_id ON public.lesson_sessions USING btree (class_id);
CREATE INDEX ix_lesson_sessions_class_lesson_id ON public.lesson_sessions USING btree (class_lesson_id);
CREATE INDEX ix_lesson_sessions_is_deleted ON public.lesson_sessions USING btree (is_deleted);
CREATE INDEX ix_lesson_sessions_lesson_id ON public.lesson_sessions USING btree (lesson_id);
CREATE INDEX ix_lesson_sessions_scheduled_date ON public.lesson_sessions USING btree (scheduled_date);
CREATE INDEX ix_lesson_sessions_session_id ON public.lesson_sessions USING btree (session_id);
CREATE INDEX ix_lesson_sessions_session_status ON public.lesson_sessions USING btree (session_status);


-- public.messaging_messages definition

-- Drop table

-- DROP TABLE public.messaging_messages;

CREATE TABLE public.messaging_messages (
	id serial4 NOT NULL,
	conversation_id int4 NOT NULL,
	sender_id text NOT NULL,
	"content" text NOT NULL,
	is_read bool DEFAULT false NOT NULL,
	is_deleted bool DEFAULT false NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp DEFAULT now() NOT NULL,
	CONSTRAINT pk_messaging_messages PRIMARY KEY (id),
	CONSTRAINT fk_messaging_messages_conversation_id_messaging_conversations FOREIGN KEY (conversation_id) REFERENCES public.messaging_conversations(id)
);
CREATE INDEX idx_message_conversation ON public.messaging_messages USING btree (conversation_id);
CREATE INDEX idx_message_created ON public.messaging_messages USING btree (conversation_id, created_at);
CREATE INDEX idx_message_unread ON public.messaging_messages USING btree (conversation_id, is_read);


-- public.password_reset_tokens definition

-- Drop table

-- DROP TABLE public.password_reset_tokens;

CREATE TABLE public.password_reset_tokens (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	"token" varchar(255) NOT NULL,
	email text NOT NULL,
	is_used bool NOT NULL,
	expires_at timestamp NOT NULL,
	created_at timestamp NOT NULL,
	used_at timestamp NULL,
	ip_address varchar(45) NULL,
	user_agent text NULL,
	CONSTRAINT pk_password_reset_tokens PRIMARY KEY (id),
	CONSTRAINT uq_password_reset_tokens_token UNIQUE (token),
	CONSTRAINT fk_password_reset_tokens_user_id_users FOREIGN KEY (user_id) REFERENCES public.users(id)
);


-- public.personal_tasks definition

-- Drop table

-- DROP TABLE public.personal_tasks;

CREATE TABLE public.personal_tasks (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	title varchar(255) NOT NULL,
	description text NULL,
	status varchar(50) NOT NULL,
	priority varchar(50) NOT NULL,
	due_date timestamptz NULL,
	start_date timestamptz NULL,
	completed_at timestamptz NULL,
	estimated_minutes int4 NULL,
	actual_minutes int4 NULL,
	tags text NULL,
	category varchar(100) NULL,
	related_goal_id int4 NULL,
	related_curriculum_id int4 NULL,
	notes text NULL,
	attachments text NULL,
	is_recurring bool DEFAULT false NOT NULL,
	parent_task_id int4 NULL,
	tenant_id int4 NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamptz NULL,
	updated_by text NULL,
	order_index int4 DEFAULT 0 NOT NULL,
	recurrence_type varchar(50) NULL,
	recurrence_config text NULL,
	recurrence_end_date timestamptz NULL,
	is_from_google bool DEFAULT false NOT NULL,
	google_event_id varchar(255) NULL,
	google_calendar_id varchar(255) NULL,
	start_time timestamp NULL,
	end_time timestamp NULL,
	is_all_day bool DEFAULT false NOT NULL,
	"location" text NULL,
	recurring_event_id varchar(255) NULL,
	recurrence text NULL,
	original_start_time timestamp NULL,
	is_recurring_master bool DEFAULT false NOT NULL,
	google_account_id int4 NULL,
	CONSTRAINT pk_personal_tasks PRIMARY KEY (id),
	CONSTRAINT fk_personal_tasks_google_account FOREIGN KEY (google_account_id) REFERENCES public.google_accounts(id) ON DELETE SET NULL,
	CONSTRAINT fk_personal_tasks_parent_task_id_personal_tasks FOREIGN KEY (parent_task_id) REFERENCES public.personal_tasks(id)
);
CREATE INDEX ix_personal_tasks_due_date ON public.personal_tasks USING btree (due_date);
CREATE INDEX ix_personal_tasks_google_account_id ON public.personal_tasks USING btree (google_account_id);
CREATE INDEX ix_personal_tasks_google_event_id ON public.personal_tasks USING btree (google_event_id);
CREATE INDEX ix_personal_tasks_id ON public.personal_tasks USING btree (id);
CREATE INDEX ix_personal_tasks_is_deleted ON public.personal_tasks USING btree (is_deleted);
CREATE INDEX ix_personal_tasks_is_recurring ON public.personal_tasks USING btree (is_recurring);
CREATE INDEX ix_personal_tasks_is_recurring_master ON public.personal_tasks USING btree (is_recurring_master);
CREATE INDEX ix_personal_tasks_order_index ON public.personal_tasks USING btree (order_index);
CREATE INDEX ix_personal_tasks_parent_task_id ON public.personal_tasks USING btree (parent_task_id);
CREATE INDEX ix_personal_tasks_recurring_event_id ON public.personal_tasks USING btree (recurring_event_id);
CREATE INDEX ix_personal_tasks_status ON public.personal_tasks USING btree (status);
CREATE INDEX ix_personal_tasks_user_id ON public.personal_tasks USING btree (user_id);


-- public.question_sets definition

-- Drop table

-- DROP TABLE public.question_sets;

CREATE TABLE public.question_sets (
	id serial4 NOT NULL,
	base_date timestamp NULL,
	goal_id text NULL,
	user_id text NULL,
	set_type text NULL,
	topic_id text NULL,
	"name" text NOT NULL,
	score int4 NULL,
	description text NULL,
	is_favorite bool DEFAULT false NULL,
	is_mock_test bool DEFAULT false NULL,
	card_count int4 DEFAULT 0 NULL,
	total_study_time int4 DEFAULT 0 NULL,
	folder_id int4 NULL,
	is_show bool DEFAULT true NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	is_system bool DEFAULT false NULL,
	"level" text NULL,
	question_type text NULL,
	is_public bool DEFAULT false NULL,
	last_accessed_time timestamp NULL,
	public_id text NULL,
	category text NULL,
	reading_passage_id int4 NULL,
	listening_collection_id int4 NULL,
	play_from int4 NULL,
	play_to int4 NULL,
	CONSTRAINT pk_question_sets PRIMARY KEY (id),
	CONSTRAINT fk_question_sets_reading_passage_id FOREIGN KEY (reading_passage_id) REFERENCES public.reading_passages(id)
);
CREATE INDEX ix_question_sets_category ON public.question_sets USING btree (category);
CREATE INDEX ix_question_sets_system_level_topic ON public.question_sets USING btree (is_system, level, topic_id) WHERE (is_deleted = false);


-- public.roles definition

-- Drop table

-- DROP TABLE public.roles;

CREATE TABLE public.roles (
	id text NOT NULL,
	"name" text NOT NULL,
	description text NULL,
	is_system_role bool NOT NULL,
	inherit_permissions bool NOT NULL,
	"level" int4 NOT NULL,
	parent_role_id text NULL,
	tenant_id text NULL,
	is_deleted bool NOT NULL,
	is_active bool NOT NULL,
	created_at timestamp NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	CONSTRAINT pk_roles PRIMARY KEY (id),
	CONSTRAINT fk_roles_parent_role_id_roles FOREIGN KEY (parent_role_id) REFERENCES public.roles(id)
);


-- public.senses definition

-- Drop table

-- DROP TABLE public.senses;

CREATE TABLE public.senses (
	id serial4 NOT NULL,
	vocabulary_id int4 NOT NULL,
	w_category text NULL,
	meaning text NULL,
	explanation text NULL,
	jp_explanation text NULL,
	example text NULL,
	example_meaning text NULL,
	furigana text NULL,
	lang varchar(3) NULL,
	order_index int4 NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	audio_data jsonb NULL,
	CONSTRAINT pk_senses PRIMARY KEY (id),
	CONSTRAINT fk_senses_vocabulary_id_vocabulary FOREIGN KEY (vocabulary_id) REFERENCES public.vocabulary(id) ON DELETE CASCADE
);
CREATE INDEX idx_senses_vocab ON public.senses USING btree (vocabulary_id) WHERE (is_deleted = false);
CREATE INDEX ix_senses_id ON public.senses USING btree (id);


-- public.student_assignment_attempts definition

-- Drop table

-- DROP TABLE public.student_assignment_attempts;

CREATE TABLE public.student_assignment_attempts (
	id serial4 NOT NULL,
	assignment_id int4 NOT NULL,
	student_id text NOT NULL,
	attempt_number int4 NOT NULL,
	score int4 NOT NULL,
	total_questions int4 NOT NULL,
	started_at timestamptz DEFAULT now() NOT NULL,
	completed_at timestamptz NULL,
	status varchar(20) NOT NULL,
	tenant_id int4 NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamptz NULL,
	updated_by text NULL,
	CONSTRAINT pk_student_assignment_attempts PRIMARY KEY (id),
	CONSTRAINT uq_student_attempt UNIQUE (assignment_id, student_id, attempt_number),
	CONSTRAINT fk_student_assignment_attempts_assignment_id_class_assignments FOREIGN KEY (assignment_id) REFERENCES public.class_assignments(id) ON DELETE CASCADE
);
CREATE INDEX ix_student_assignment_attempts_assignment_id ON public.student_assignment_attempts USING btree (assignment_id);
CREATE INDEX ix_student_assignment_attempts_id ON public.student_assignment_attempts USING btree (id);
CREATE INDEX ix_student_assignment_attempts_is_deleted ON public.student_assignment_attempts USING btree (is_deleted);
CREATE INDEX ix_student_assignment_attempts_status ON public.student_assignment_attempts USING btree (status);
CREATE INDEX ix_student_assignment_attempts_student_id ON public.student_assignment_attempts USING btree (student_id);


-- public.student_flashcard_progress definition

-- Drop table

-- DROP TABLE public.student_flashcard_progress;

CREATE TABLE public.student_flashcard_progress (
	id serial4 NOT NULL,
	student_id text NOT NULL,
	flashcard_id int4 NOT NULL,
	class_id int4 NOT NULL,
	stability int4 NULL,
	difficulty int4 NULL,
	due timestamp NULL,
	last_review timestamp NULL,
	state varchar(20) NOT NULL,
	review_count int4 NOT NULL,
	reps int4 NOT NULL,
	lapses int4 NOT NULL,
	elapsed_days int4 NULL,
	scheduled_days int4 NULL,
	tenant_id int4 NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamptz NULL,
	updated_by text NULL,
	CONSTRAINT pk_student_flashcard_progress PRIMARY KEY (id),
	CONSTRAINT uq_student_flashcard_progress UNIQUE (student_id, flashcard_id, class_id),
	CONSTRAINT fk_student_flashcard_progress_class_id_classes FOREIGN KEY (class_id) REFERENCES public.classes(class_id) ON DELETE CASCADE
);
CREATE INDEX ix_student_flashcard_progress_class_id ON public.student_flashcard_progress USING btree (class_id);
CREATE INDEX ix_student_flashcard_progress_flashcard_id ON public.student_flashcard_progress USING btree (flashcard_id);
CREATE INDEX ix_student_flashcard_progress_id ON public.student_flashcard_progress USING btree (id);
CREATE INDEX ix_student_flashcard_progress_is_deleted ON public.student_flashcard_progress USING btree (is_deleted);
CREATE INDEX ix_student_flashcard_progress_student_id ON public.student_flashcard_progress USING btree (student_id);


-- public.student_round_progress definition

-- Drop table

-- DROP TABLE public.student_round_progress;

CREATE TABLE public.student_round_progress (
	id serial4 NOT NULL,
	assignment_id int4 NOT NULL,
	student_id text NOT NULL,
	round_number int4 NOT NULL,
	studied_flashcard_ids text NULL,
	total_flashcards int4 NOT NULL,
	status varchar(20) NOT NULL,
	started_at timestamptz DEFAULT now() NOT NULL,
	completed_at timestamptz NULL,
	tenant_id int4 NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamptz NULL,
	updated_by text NULL,
	CONSTRAINT student_round_progress_pkey PRIMARY KEY (id),
	CONSTRAINT uq_student_round UNIQUE (assignment_id, student_id, round_number),
	CONSTRAINT student_round_progress_assignment_id_fkey FOREIGN KEY (assignment_id) REFERENCES public.class_assignments(id) ON DELETE CASCADE
);
CREATE INDEX ix_student_round_progress_assignment_id ON public.student_round_progress USING btree (assignment_id);
CREATE INDEX ix_student_round_progress_id ON public.student_round_progress USING btree (id);
CREATE INDEX ix_student_round_progress_is_deleted ON public.student_round_progress USING btree (is_deleted);
CREATE INDEX ix_student_round_progress_status ON public.student_round_progress USING btree (status);
CREATE INDEX ix_student_round_progress_student_id ON public.student_round_progress USING btree (student_id);


-- public.study_courses definition

-- Drop table

-- DROP TABLE public.study_courses;

CREATE TABLE public.study_courses (
	id serial4 NOT NULL,
	code varchar(50) NOT NULL,
	"name" varchar(200) NOT NULL,
	description text NULL,
	order_index int4 NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp NULL,
	icon varchar(50) NULL,
	source_course_id int4 NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	created_by text NULL,
	updated_by text NULL,
	free_preview_count int4 DEFAULT 5 NULL,
	CONSTRAINT pk_study_courses PRIMARY KEY (id),
	CONSTRAINT fk_study_courses_source_course_id_study_courses FOREIGN KEY (source_course_id) REFERENCES public.study_courses(id) ON DELETE SET NULL
);
CREATE UNIQUE INDEX ix_study_courses_code ON public.study_courses USING btree (code);
CREATE INDEX ix_study_courses_id ON public.study_courses USING btree (id);
CREATE INDEX ix_study_courses_tenant_id ON public.study_courses USING btree (tenant_id);


-- public.study_module_contents definition

-- Drop table

-- DROP TABLE public.study_module_contents;

CREATE TABLE public.study_module_contents (
	id serial4 NOT NULL,
	module_id int4 NOT NULL,
	content_type text NOT NULL,
	content_id int4 NOT NULL,
	order_index int4 DEFAULT 0 NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	CONSTRAINT pk_study_module_contents PRIMARY KEY (id),
	CONSTRAINT fk_study_module_contents_module_id_study_modules FOREIGN KEY (module_id) REFERENCES public.study_modules(id) ON DELETE CASCADE
);
CREATE INDEX idx_smc_content ON public.study_module_contents USING btree (content_type, content_id);
CREATE INDEX idx_smc_module ON public.study_module_contents USING btree (module_id) WHERE (is_deleted = false);
CREATE INDEX ix_study_module_contents_id ON public.study_module_contents USING btree (id);


-- public.study_module_progress definition

-- Drop table

-- DROP TABLE public.study_module_progress;

CREATE TABLE public.study_module_progress (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	module_id int4 NOT NULL,
	completed_sets int4 DEFAULT 0 NOT NULL,
	total_sets int4 DEFAULT 0 NOT NULL,
	average_score int4 NULL,
	is_completed bool DEFAULT false NOT NULL,
	completed_at timestamp NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	CONSTRAINT pk_study_module_progress PRIMARY KEY (id),
	CONSTRAINT fk_study_module_progress_module_id_study_modules FOREIGN KEY (module_id) REFERENCES public.study_modules(id) ON DELETE CASCADE,
	CONSTRAINT fk_study_module_progress_user_id_users FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE
);
CREATE INDEX ix_study_module_progress_id ON public.study_module_progress USING btree (id);
CREATE INDEX ix_study_module_progress_is_completed ON public.study_module_progress USING btree (is_completed);
CREATE INDEX ix_study_module_progress_module_id ON public.study_module_progress USING btree (module_id);
CREATE INDEX ix_study_module_progress_user_id ON public.study_module_progress USING btree (user_id);
CREATE UNIQUE INDEX uq_study_module_progress_user_module ON public.study_module_progress USING btree (user_id, module_id);


-- public.study_question_set_progress definition

-- Drop table

-- DROP TABLE public.study_question_set_progress;

CREATE TABLE public.study_question_set_progress (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	question_set_id int4 NOT NULL,
	status varchar(20) DEFAULT 'not_started'::character varying NOT NULL,
	is_completed bool DEFAULT false NOT NULL,
	best_score int4 NULL,
	attempt_count int4 DEFAULT 0 NOT NULL,
	total_correct int4 DEFAULT 0 NOT NULL,
	total_answered int4 DEFAULT 0 NOT NULL,
	last_attempted_at timestamp NULL,
	first_completed_at timestamp NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	CONSTRAINT pk_study_question_set_progress PRIMARY KEY (id),
	CONSTRAINT fk_study_question_set_progress_question_set_id_study_qu_6e11 FOREIGN KEY (question_set_id) REFERENCES public.study_question_sets(id) ON DELETE CASCADE,
	CONSTRAINT fk_study_question_set_progress_user_id_users FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE
);
CREATE INDEX ix_study_qs_progress_qs ON public.study_question_set_progress USING btree (question_set_id);
CREATE INDEX ix_study_qs_progress_status ON public.study_question_set_progress USING btree (status);
CREATE INDEX ix_study_qs_progress_user ON public.study_question_set_progress USING btree (user_id);
CREATE INDEX ix_study_question_set_progress_id ON public.study_question_set_progress USING btree (id);
CREATE INDEX ix_study_question_set_progress_question_set_id ON public.study_question_set_progress USING btree (question_set_id);
CREATE INDEX ix_study_question_set_progress_user_id ON public.study_question_set_progress USING btree (user_id);
CREATE UNIQUE INDEX uq_study_question_set_progress ON public.study_question_set_progress USING btree (user_id, question_set_id);


-- public.study_question_set_questions definition

-- Drop table

-- DROP TABLE public.study_question_set_questions;

CREATE TABLE public.study_question_set_questions (
	id serial4 NOT NULL,
	study_question_set_id int4 NOT NULL,
	question_id int4 NOT NULL,
	order_index int4 DEFAULT 0 NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	created_by text NULL,
	CONSTRAINT pk_study_question_set_questions PRIMARY KEY (id),
	CONSTRAINT fk_study_question_set_questions_study_question_set_id_s_3e25 FOREIGN KEY (study_question_set_id) REFERENCES public.study_question_sets(id) ON DELETE CASCADE
);
CREATE INDEX ix_study_question_set_questions_id ON public.study_question_set_questions USING btree (id);
CREATE INDEX ix_study_question_set_questions_question_id ON public.study_question_set_questions USING btree (question_id);
CREATE INDEX ix_study_question_set_questions_study_question_set_id ON public.study_question_set_questions USING btree (study_question_set_id);
CREATE UNIQUE INDEX uq_study_question_set_questions ON public.study_question_set_questions USING btree (study_question_set_id, question_id);


-- public.study_resource_question_sets definition

-- Drop table

-- DROP TABLE public.study_resource_question_sets;

CREATE TABLE public.study_resource_question_sets (
	id serial4 NOT NULL,
	resource_type varchar(50) NOT NULL,
	resource_id int4 NOT NULL,
	study_question_set_id int4 NOT NULL,
	"position" int4 NOT NULL,
	context jsonb DEFAULT '{}'::jsonb NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	created_by text NULL,
	updated_by text NULL,
	CONSTRAINT pk_study_resource_question_sets PRIMARY KEY (id),
	CONSTRAINT fk_study_resource_question_sets_study_question_set_id_s_fbd4 FOREIGN KEY (study_question_set_id) REFERENCES public.study_question_sets(id) ON DELETE CASCADE
);
CREATE INDEX ix_study_resource_question_sets_id ON public.study_resource_question_sets USING btree (id);
CREATE INDEX ix_study_resource_question_sets_question_set ON public.study_resource_question_sets USING btree (study_question_set_id);
CREATE INDEX ix_study_resource_question_sets_resource ON public.study_resource_question_sets USING btree (resource_type, resource_id);
CREATE INDEX ix_study_resource_question_sets_resource_id ON public.study_resource_question_sets USING btree (resource_id);
CREATE INDEX ix_study_resource_question_sets_resource_type ON public.study_resource_question_sets USING btree (resource_type);
CREATE INDEX ix_study_resource_question_sets_study_question_set_id ON public.study_resource_question_sets USING btree (study_question_set_id);
CREATE UNIQUE INDEX uq_study_resource_question_sets ON public.study_resource_question_sets USING btree (resource_type, resource_id, study_question_set_id);


-- public.study_test_sessions definition

-- Drop table

-- DROP TABLE public.study_test_sessions;

CREATE TABLE public.study_test_sessions (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	module_id int4 NULL,
	study_question_set_id int4 NULL,
	test_type varchar(50) NOT NULL,
	score int4 NULL,
	total_questions int4 NULL,
	is_passed bool NULL,
	started_at timestamp DEFAULT now() NOT NULL,
	completed_at timestamp NULL,
	duration_seconds int4 NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	CONSTRAINT pk_study_test_sessions PRIMARY KEY (id),
	CONSTRAINT fk_study_test_sessions_module_id_study_modules FOREIGN KEY (module_id) REFERENCES public.study_modules(id) ON DELETE CASCADE,
	CONSTRAINT fk_study_test_sessions_study_question_set_id_study_ques_eba6 FOREIGN KEY (study_question_set_id) REFERENCES public.study_question_sets(id) ON DELETE SET NULL,
	CONSTRAINT fk_study_test_sessions_user_id_users FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE
);
CREATE INDEX ix_study_test_sessions_id ON public.study_test_sessions USING btree (id);
CREATE INDEX ix_study_test_sessions_module_id ON public.study_test_sessions USING btree (module_id);
CREATE INDEX ix_study_test_sessions_started_at ON public.study_test_sessions USING btree (started_at);
CREATE INDEX ix_study_test_sessions_study_question_set_id ON public.study_test_sessions USING btree (study_question_set_id);
CREATE INDEX ix_study_test_sessions_user_id ON public.study_test_sessions USING btree (user_id);


-- public.study_user_progress definition

-- Drop table

-- DROP TABLE public.study_user_progress;

CREATE TABLE public.study_user_progress (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	question_id int4 NOT NULL,
	test_session_id int4 NULL,
	user_answer text NULL,
	is_correct bool NULL,
	score int4 NULL,
	audio_play_count int4 DEFAULT 0 NOT NULL,
	attempt_number int4 DEFAULT 1 NOT NULL,
	response_time_ms int4 NULL,
	time_spent_seconds int4 NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	CONSTRAINT pk_study_user_progress PRIMARY KEY (id),
	CONSTRAINT fk_study_user_progress_test_session_id_study_test_sessions FOREIGN KEY (test_session_id) REFERENCES public.study_test_sessions(id) ON DELETE SET NULL,
	CONSTRAINT fk_study_user_progress_user_id_users FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE
);
CREATE INDEX ix_study_user_progress_created_at ON public.study_user_progress USING btree (created_at);
CREATE INDEX ix_study_user_progress_id ON public.study_user_progress USING btree (id);
CREATE INDEX ix_study_user_progress_question_id ON public.study_user_progress USING btree (question_id);
CREATE INDEX ix_study_user_progress_test_session_id ON public.study_user_progress USING btree (test_session_id);
CREATE INDEX ix_study_user_progress_user_id ON public.study_user_progress USING btree (user_id);


-- public.taggable_items definition

-- Drop table

-- DROP TABLE public.taggable_items;

CREATE TABLE public.taggable_items (
	id serial4 NOT NULL,
	is_system bool DEFAULT false NULL,
	tag_id int4 NOT NULL,
	tenant_id text NULL,
	user_id text NULL,
	tag_type varchar NOT NULL,
	in_table varchar NOT NULL,
	item_id text NOT NULL,
	created_at timestamp NULL,
	CONSTRAINT pk_taggable_items PRIMARY KEY (id),
	CONSTRAINT fk_taggable_items_tag_id_tags FOREIGN KEY (tag_id) REFERENCES public.tags(id)
);


-- public.task_comments definition

-- Drop table

-- DROP TABLE public.task_comments;

CREATE TABLE public.task_comments (
	id serial4 NOT NULL,
	task_id int4 NOT NULL,
	user_id text NOT NULL,
	"content" text NOT NULL,
	is_deleted bool DEFAULT false NOT NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	created_by int4 NULL,
	updated_at timestamptz NULL,
	updated_by int4 NULL,
	CONSTRAINT pk_task_comments PRIMARY KEY (id),
	CONSTRAINT fk_task_comments_task_id_personal_tasks FOREIGN KEY (task_id) REFERENCES public.personal_tasks(id) ON DELETE CASCADE
);
CREATE INDEX ix_task_comments_id ON public.task_comments USING btree (id);
CREATE INDEX ix_task_comments_task_id ON public.task_comments USING btree (task_id);


-- public.task_history definition

-- Drop table

-- DROP TABLE public.task_history;

CREATE TABLE public.task_history (
	id serial4 NOT NULL,
	task_id int4 NOT NULL,
	user_id text NOT NULL,
	field_name varchar(100) NOT NULL,
	old_value text NULL,
	new_value text NULL,
	changed_at timestamptz NOT NULL,
	CONSTRAINT pk_task_history PRIMARY KEY (id),
	CONSTRAINT fk_task_history_task_id_personal_tasks FOREIGN KEY (task_id) REFERENCES public.personal_tasks(id) ON DELETE CASCADE
);
CREATE INDEX ix_task_history_id ON public.task_history USING btree (id);
CREATE INDEX ix_task_history_task_id ON public.task_history USING btree (task_id);


-- public.topics definition

-- Drop table

-- DROP TABLE public.topics;

CREATE TABLE public.topics (
	id text NOT NULL,
	"name" text NOT NULL,
	description text NULL,
	icon text NULL,
	color text NULL,
	parent_id text NULL,
	order_index int4 NOT NULL,
	tenant_id text NULL,
	is_deleted bool NOT NULL,
	is_active bool NOT NULL,
	created_at timestamp NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	CONSTRAINT pk_topics PRIMARY KEY (id),
	CONSTRAINT fk_topics_parent_id_topics FOREIGN KEY (parent_id) REFERENCES public.topics(id)
);


-- public.user_2fa_audit_log definition

-- Drop table

-- DROP TABLE public.user_2fa_audit_log;

CREATE TABLE public.user_2fa_audit_log (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	session_id int4 NULL,
	event_type text NULL,
	method_used text NULL,
	ip_address varchar NOT NULL,
	user_agent text NULL,
	success bool NOT NULL,
	failure_reason text NULL,
	metadata json NULL,
	created_at timestamp NULL,
	CONSTRAINT pk_user_2fa_audit_log PRIMARY KEY (id),
	CONSTRAINT fk_user_2fa_audit_log_session_id_authentication_sessions FOREIGN KEY (session_id) REFERENCES public.authentication_sessions(id),
	CONSTRAINT fk_user_2fa_audit_log_user_id_users FOREIGN KEY (user_id) REFERENCES public.users(id)
);


-- public.user_2fa_backup_codes definition

-- Drop table

-- DROP TABLE public.user_2fa_backup_codes;

CREATE TABLE public.user_2fa_backup_codes (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	code_hash varchar NOT NULL,
	code_hint varchar NOT NULL,
	is_used bool NULL,
	used_at timestamp NULL,
	used_from_ip varchar NULL,
	used_user_agent text NULL,
	expires_at timestamp NOT NULL,
	created_at timestamp NULL,
	CONSTRAINT pk_user_2fa_backup_codes PRIMARY KEY (id),
	CONSTRAINT fk_user_2fa_backup_codes_user_id_users FOREIGN KEY (user_id) REFERENCES public.users(id)
);


-- public.user_2fa_settings definition

-- Drop table

-- DROP TABLE public.user_2fa_settings;

CREATE TABLE public.user_2fa_settings (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	is_enabled bool NOT NULL,
	primary_method text NULL,
	phone_number varchar NULL,
	totp_secret varchar NULL,
	totp_backup_codes json NULL,
	totp_algorithm varchar NULL,
	totp_digits int4 NULL,
	totp_period int4 NULL,
	recovery_codes_count int4 NULL,
	last_used_backup_code_at timestamp NULL,
	failed_attempts int4 NULL,
	locked_until timestamp NULL,
	trusted_devices json NULL,
	enabled_at timestamp NULL,
	last_verified_at timestamp NULL,
	created_at timestamp NULL,
	updated_at timestamp NULL,
	CONSTRAINT pk_user_2fa_settings PRIMARY KEY (id),
	CONSTRAINT fk_user_2fa_settings_user_id_users FOREIGN KEY (user_id) REFERENCES public.users(id)
);


-- public.user_content_progress definition

-- Drop table

-- DROP TABLE public.user_content_progress;

CREATE TABLE public.user_content_progress (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	content_type text NOT NULL,
	content_id int4 NOT NULL,
	course_id int4 NULL,
	module_id int4 NULL,
	class_id int4 NULL,
	tenant_id text NULL,
	status text DEFAULT 'new'::text NOT NULL,
	first_seen_at timestamp NULL,
	first_practiced_at timestamp NULL,
	mastered_at timestamp NULL,
	total_attempts int4 DEFAULT 0 NOT NULL,
	correct_count int4 DEFAULT 0 NOT NULL,
	wrong_count int4 DEFAULT 0 NOT NULL,
	skip_count int4 DEFAULT 0 NOT NULL,
	consecutive_correct int4 DEFAULT 0 NOT NULL,
	max_consecutive_correct int4 DEFAULT 0 NOT NULL,
	accuracy_rate float8 DEFAULT '0'::double precision NOT NULL,
	avg_response_time_ms int4 DEFAULT 0 NOT NULL,
	fastest_response_time_ms int4 NULL,
	slowest_response_time_ms int4 NULL,
	correct_by_type jsonb DEFAULT '{}'::jsonb NULL,
	wrong_by_type jsonb DEFAULT '{}'::jsonb NULL,
	last_practiced_at timestamp NULL,
	last_correct_at timestamp NULL,
	last_wrong_at timestamp NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	CONSTRAINT pk_user_content_progress PRIMARY KEY (id),
	CONSTRAINT fk_user_content_progress_course_id_study_courses FOREIGN KEY (course_id) REFERENCES public.study_courses(id) ON DELETE SET NULL,
	CONSTRAINT fk_user_content_progress_module_id_study_modules FOREIGN KEY (module_id) REFERENCES public.study_modules(id) ON DELETE SET NULL,
	CONSTRAINT fk_user_content_progress_user_id_users FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE
);
CREATE INDEX idx_ucp_class_content ON public.user_content_progress USING btree (class_id, content_type, content_id) WHERE ((class_id IS NOT NULL) AND (is_deleted = false));
CREATE INDEX idx_ucp_class_module ON public.user_content_progress USING btree (class_id, module_id) WHERE ((class_id IS NOT NULL) AND (is_deleted = false));
CREATE INDEX idx_ucp_user_course ON public.user_content_progress USING btree (user_id, course_id, module_id) WHERE (is_deleted = false);
CREATE INDEX ix_user_content_progress_id ON public.user_content_progress USING btree (id);


-- public.user_conversation_progress definition

-- Drop table

-- DROP TABLE public.user_conversation_progress;

CREATE TABLE public.user_conversation_progress (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	conversation_id int4 NOT NULL,
	is_completed bool DEFAULT false NULL,
	times_listened int4 DEFAULT 0 NULL,
	times_practiced int4 DEFAULT 0 NULL,
	times_shadowed int4 DEFAULT 0 NULL,
	learning_stage text NULL,
	proficiency_score int4 DEFAULT 0 NULL,
	last_listened_at timestamp NULL,
	last_practiced_at timestamp NULL,
	first_completed_at timestamp NULL,
	is_favorite bool DEFAULT false NULL,
	is_bookmarked bool DEFAULT false NULL,
	user_notes text NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	CONSTRAINT pk_user_conversation_progress PRIMARY KEY (id),
	CONSTRAINT uq_user_conversation UNIQUE (user_id, conversation_id),
	CONSTRAINT fk_user_conversation_progress_conversation_id_conversations FOREIGN KEY (conversation_id) REFERENCES public.conversations(id) ON DELETE CASCADE
);
CREATE INDEX ix_user_conversation_progress_conversation_id ON public.user_conversation_progress USING btree (conversation_id);
CREATE INDEX ix_user_conversation_progress_user_id ON public.user_conversation_progress USING btree (user_id);


-- public.user_flashcard_progress definition

-- Drop table

-- DROP TABLE public.user_flashcard_progress;

CREATE TABLE public.user_flashcard_progress (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	flashcard_id int4 NOT NULL,
	context_type text NOT NULL,
	context_id int4 NULL,
	tenant_id text NULL,
	stability float8 DEFAULT '0.4'::double precision NOT NULL,
	difficulty float8 DEFAULT '5'::double precision NOT NULL,
	due timestamp NULL,
	last_review timestamp NULL,
	state varchar(20) DEFAULT 'New'::character varying NOT NULL,
	step int4 DEFAULT 0 NOT NULL,
	review_count int4 DEFAULT 0 NOT NULL,
	reps int4 DEFAULT 0 NOT NULL,
	lapses int4 DEFAULT 0 NOT NULL,
	elapsed_days int4 DEFAULT 0 NOT NULL,
	scheduled_days int4 DEFAULT 0 NOT NULL,
	retrievability float8 DEFAULT '0'::double precision NOT NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp NULL,
	is_favorite bool DEFAULT false NOT NULL,
	is_marked_difficult bool DEFAULT false NOT NULL,
	CONSTRAINT pk_user_flashcard_progress PRIMARY KEY (id),
	CONSTRAINT fk_user_flashcard_progress_flashcard_id_flashcards FOREIGN KEY (flashcard_id) REFERENCES public.flashcards(id) ON DELETE CASCADE,
	CONSTRAINT fk_user_flashcard_progress_user_id_users FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE
);
CREATE INDEX idx_ufp_due ON public.user_flashcard_progress USING btree (user_id, due) WHERE (((state)::text <> 'New'::text) AND (is_deleted = false));
CREATE UNIQUE INDEX idx_ufp_user_card_context ON public.user_flashcard_progress USING btree (user_id, flashcard_id, context_type, context_id) WHERE (is_deleted = false);
CREATE INDEX ix_user_flashcard_progress_id ON public.user_flashcard_progress USING btree (id);


-- public.user_gardens definition

-- Drop table

-- DROP TABLE public.user_gardens;

CREATE TABLE public.user_gardens (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	"name" varchar(100) DEFAULT 'Làng học tập'::character varying NOT NULL,
	grid_width int4 DEFAULT 20 NOT NULL,
	grid_height int4 DEFAULT 20 NOT NULL,
	player_x float8 DEFAULT 960.0 NOT NULL,
	player_y float8 DEFAULT 960.0 NOT NULL,
	buildings jsonb DEFAULT '[]'::jsonb NOT NULL,
	tiles jsonb DEFAULT '[]'::jsonb NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp NULL,
	CONSTRAINT pk_user_gardens PRIMARY KEY (id),
	CONSTRAINT fk_user_gardens_user_id_users FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE
);
CREATE UNIQUE INDEX ix_user_gardens_user_id ON public.user_gardens USING btree (user_id);


-- public.user_permissions definition

-- Drop table

-- DROP TABLE public.user_permissions;

CREATE TABLE public.user_permissions (
	id text NOT NULL,
	user_id text NOT NULL,
	permission_id text NOT NULL,
	assigned_by text NOT NULL,
	assigned_at timestamp NOT NULL,
	expires_at timestamp NULL,
	is_granted bool NOT NULL,
	reason text NULL,
	context json NULL,
	revoked_at timestamp NULL,
	revoked_by text NULL,
	tenant_id text NULL,
	is_deleted bool NOT NULL,
	is_active bool NOT NULL,
	created_at timestamp NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	CONSTRAINT pk_user_permissions PRIMARY KEY (id),
	CONSTRAINT fk_user_permissions_assigned_by_users FOREIGN KEY (assigned_by) REFERENCES public.users(id),
	CONSTRAINT fk_user_permissions_permission_id_permissions FOREIGN KEY (permission_id) REFERENCES public.permissions(id),
	CONSTRAINT fk_user_permissions_user_id_users FOREIGN KEY (user_id) REFERENCES public.users(id)
);


-- public.user_purchases definition

-- Drop table

-- DROP TABLE public.user_purchases;

CREATE TABLE public.user_purchases (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	item_id int4 NOT NULL,
	currency_type varchar(20) NOT NULL,
	price_paid int4 NOT NULL,
	purchased_at timestamp DEFAULT now() NOT NULL,
	CONSTRAINT pk_user_purchases PRIMARY KEY (id),
	CONSTRAINT uq_user_purchases_user_item UNIQUE (user_id, item_id),
	CONSTRAINT fk_user_purchases_item_id_shop_items FOREIGN KEY (item_id) REFERENCES public.shop_items(id) ON DELETE CASCADE,
	CONSTRAINT fk_user_purchases_user_id_users FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE
);
CREATE INDEX ix_user_purchases_item_id ON public.user_purchases USING btree (item_id);
CREATE INDEX ix_user_purchases_user_id ON public.user_purchases USING btree (user_id);


-- public.user_questions definition

-- Drop table

-- DROP TABLE public.user_questions;

CREATE TABLE public.user_questions (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	question_id int4 NOT NULL,
	learning_stage text NULL,
	"interval" int4 NULL,
	easiness_factor varchar NULL,
	due_date timestamp NULL,
	last_reviewed_at timestamp NULL,
	correct_times int4 NULL,
	wrong_times int4 NULL,
	consecutive_correct int4 NULL,
	review_count int4 NULL,
	quality int4 NULL,
	is_favorite bool NULL,
	is_marked_difficult bool NULL,
	user_notes text NULL,
	notes_updated_at timestamp NULL,
	CONSTRAINT pk_user_questions PRIMARY KEY (id),
	CONSTRAINT fk_user_questions_question_id_questions FOREIGN KEY (question_id) REFERENCES public.questions(id)
);
CREATE INDEX ix_user_questions_notes ON public.user_questions USING btree (user_id, notes_updated_at) WHERE ((user_notes IS NOT NULL) AND (user_notes <> ''::text));
CREATE INDEX ix_user_questions_question_user ON public.user_questions USING btree (question_id, user_id);
CREATE INDEX ix_user_questions_user_consecutive ON public.user_questions USING btree (user_id, consecutive_correct);
CREATE INDEX ix_user_questions_user_favorite ON public.user_questions USING btree (user_id) WHERE (is_favorite = true);


-- public.user_roles definition

-- Drop table

-- DROP TABLE public.user_roles;

CREATE TABLE public.user_roles (
	id text NOT NULL,
	user_id text NOT NULL,
	role_id text NOT NULL,
	assigned_by text NOT NULL,
	assigned_at timestamp NOT NULL,
	expires_at timestamp NULL,
	is_active bool NOT NULL,
	CONSTRAINT pk_user_roles PRIMARY KEY (id),
	CONSTRAINT fk_user_roles_assigned_by_users FOREIGN KEY (assigned_by) REFERENCES public.users(id),
	CONSTRAINT fk_user_roles_role_id_roles FOREIGN KEY (role_id) REFERENCES public.roles(id),
	CONSTRAINT fk_user_roles_user_id_users FOREIGN KEY (user_id) REFERENCES public.users(id)
);


-- public.user_settings definition

-- Drop table

-- DROP TABLE public.user_settings;

CREATE TABLE public.user_settings (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	show_furigana bool NULL,
	furigana_level text NULL,
	show_translation bool NULL,
	show_jp_meaning bool NULL,
	random_question bool NULL,
	random_answer bool NULL,
	more_settings json NULL,
	created_at timestamp NULL,
	updated_at timestamp NULL,
	CONSTRAINT pk_user_settings PRIMARY KEY (id),
	CONSTRAINT fk_user_settings_user_id_users FOREIGN KEY (user_id) REFERENCES public.users(id)
);


-- public.user_wallets definition

-- Drop table

-- DROP TABLE public.user_wallets;

CREATE TABLE public.user_wallets (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	coins int4 DEFAULT 0 NOT NULL,
	gems int4 DEFAULT 0 NOT NULL,
	total_earned int4 DEFAULT 0 NOT NULL,
	total_spent int4 DEFAULT 0 NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp NULL,
	van_khoa_diem int4 DEFAULT 0 NOT NULL,
	khoa_bang_diem int4 DEFAULT 0 NOT NULL,
	freeze_count int4 DEFAULT 0 NOT NULL,
	CONSTRAINT pk_user_wallets PRIMARY KEY (id),
	CONSTRAINT fk_user_wallets_user_id_users FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE
);
CREATE UNIQUE INDEX ix_user_wallets_user_id ON public.user_wallets USING btree (user_id);


-- public.blog_comments definition

-- Drop table

-- DROP TABLE public.blog_comments;

CREATE TABLE public.blog_comments (
	id serial4 NOT NULL,
	post_id int4 NOT NULL,
	user_id text NOT NULL,
	"content" text NOT NULL,
	parent_id int4 NULL,
	quote_comment_id int4 NULL,
	quote_text text NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp DEFAULT now() NOT NULL,
	CONSTRAINT pk_blog_comments PRIMARY KEY (id),
	CONSTRAINT fk_blog_comments_parent_id_blog_comments FOREIGN KEY (parent_id) REFERENCES public.blog_comments(id),
	CONSTRAINT fk_blog_comments_post_id_blog_posts FOREIGN KEY (post_id) REFERENCES public.blog_posts(id),
	CONSTRAINT fk_blog_comments_quote_comment_id_blog_comments FOREIGN KEY (quote_comment_id) REFERENCES public.blog_comments(id)
);


-- public.blog_poll_options definition

-- Drop table

-- DROP TABLE public.blog_poll_options;

CREATE TABLE public.blog_poll_options (
	id serial4 NOT NULL,
	post_id int4 NOT NULL,
	option_text varchar(500) NOT NULL,
	order_index int4 DEFAULT 0 NOT NULL,
	vote_count int4 DEFAULT 0 NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp DEFAULT now() NOT NULL,
	CONSTRAINT pk_blog_poll_options PRIMARY KEY (id),
	CONSTRAINT fk_blog_poll_options_post_id_blog_posts FOREIGN KEY (post_id) REFERENCES public.blog_posts(id)
);


-- public.blog_poll_votes definition

-- Drop table

-- DROP TABLE public.blog_poll_votes;

CREATE TABLE public.blog_poll_votes (
	id serial4 NOT NULL,
	post_id int4 NOT NULL,
	option_id int4 NOT NULL,
	user_id text NOT NULL,
	device_id int4 NULL,
	voted_at timestamp DEFAULT now() NOT NULL,
	CONSTRAINT pk_blog_poll_votes PRIMARY KEY (id),
	CONSTRAINT unique_user_option_vote UNIQUE (option_id, user_id),
	CONSTRAINT fk_blog_poll_votes_device_id_blog_user_access_devices FOREIGN KEY (device_id) REFERENCES public.blog_user_access_devices(id),
	CONSTRAINT fk_blog_poll_votes_option_id_blog_poll_options FOREIGN KEY (option_id) REFERENCES public.blog_poll_options(id),
	CONSTRAINT fk_blog_poll_votes_post_id_blog_posts FOREIGN KEY (post_id) REFERENCES public.blog_posts(id)
);


-- public.content_topics definition

-- Drop table

-- DROP TABLE public.content_topics;

CREATE TABLE public.content_topics (
	id serial4 NOT NULL,
	content_id text NOT NULL,
	topic_id text NOT NULL,
	topic_type text NOT NULL,
	tenant_id text NULL,
	is_deleted bool NOT NULL,
	is_active bool NOT NULL,
	created_at timestamp NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	CONSTRAINT pk_content_topics PRIMARY KEY (id),
	CONSTRAINT fk_content_topics_topic_id_topics FOREIGN KEY (topic_id) REFERENCES public.topics(id)
);


-- public.custom_content_topics definition

-- Drop table

-- DROP TABLE public.custom_content_topics;

CREATE TABLE public.custom_content_topics (
	id serial4 NOT NULL,
	content_id text NOT NULL,
	topic_id text NOT NULL,
	topic_type text NOT NULL,
	tenant_id text NULL,
	is_deleted bool NOT NULL,
	is_active bool NOT NULL,
	created_at timestamp NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	CONSTRAINT pk_custom_content_topics PRIMARY KEY (id),
	CONSTRAINT fk_custom_content_topics_topic_id_topics FOREIGN KEY (topic_id) REFERENCES public.topics(id)
);


-- public.garden_props definition

-- Drop table

-- DROP TABLE public.garden_props;

CREATE TABLE public.garden_props (
	id serial4 NOT NULL,
	garden_id int4 NOT NULL,
	prop_type varchar(50) NOT NULL,
	x float8 NOT NULL,
	y float8 NOT NULL,
	"scale" varchar(10) DEFAULT 'large'::character varying NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	CONSTRAINT pk_garden_props PRIMARY KEY (id),
	CONSTRAINT fk_garden_props_garden_id_user_gardens FOREIGN KEY (garden_id) REFERENCES public.user_gardens(id) ON DELETE CASCADE
);
CREATE INDEX ix_garden_props_garden_id ON public.garden_props USING btree (garden_id);
CREATE INDEX ix_garden_props_prop_type ON public.garden_props USING btree (prop_type);


-- public.khoa_cu_exam_answers definition

-- Drop table

-- DROP TABLE public.khoa_cu_exam_answers;

CREATE TABLE public.khoa_cu_exam_answers (
	id serial4 NOT NULL,
	session_id int4 NOT NULL,
	question_id int4 NOT NULL,
	selected_answer text NULL,
	is_correct bool NULL,
	time_spent_ms int4 NULL,
	answer_order int4 NOT NULL,
	CONSTRAINT pk_khoa_cu_exam_answers PRIMARY KEY (id),
	CONSTRAINT uq_kc_answer_session_order UNIQUE (session_id, answer_order),
	CONSTRAINT fk_khoa_cu_exam_answers_session_id_khoa_cu_exam_sessions FOREIGN KEY (session_id) REFERENCES public.khoa_cu_exam_sessions(id) ON DELETE CASCADE
);
CREATE INDEX ix_kc_answer_session ON public.khoa_cu_exam_answers USING btree (session_id);


-- public.khoa_cu_exam_registrations definition

-- Drop table

-- DROP TABLE public.khoa_cu_exam_registrations;

CREATE TABLE public.khoa_cu_exam_registrations (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	exam_schedule_id int4 NOT NULL,
	registered_at timestamp DEFAULT now() NOT NULL,
	status varchar(20) DEFAULT 'registered'::character varying NOT NULL,
	CONSTRAINT pk_khoa_cu_exam_registrations PRIMARY KEY (id),
	CONSTRAINT uq_kc_reg_user_exam UNIQUE (user_id, exam_schedule_id),
	CONSTRAINT fk_khoa_cu_exam_registrations_exam_schedule_id_khoa_cu__c7fa FOREIGN KEY (exam_schedule_id) REFERENCES public.khoa_cu_exam_schedules(id) ON DELETE CASCADE,
	CONSTRAINT fk_khoa_cu_exam_registrations_user_id_users FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE
);
CREATE INDEX ix_kc_reg_schedule ON public.khoa_cu_exam_registrations USING btree (exam_schedule_id);
CREATE INDEX ix_kc_reg_user ON public.khoa_cu_exam_registrations USING btree (user_id);


-- public.khoa_cu_exam_results definition

-- Drop table

-- DROP TABLE public.khoa_cu_exam_results;

CREATE TABLE public.khoa_cu_exam_results (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	exam_schedule_id int4 NOT NULL,
	session_id int4 NULL,
	final_score float8 NOT NULL,
	rank_position int4 NOT NULL,
	total_participants int4 NOT NULL,
	percentile float8 NOT NULL,
	passed bool DEFAULT false NOT NULL,
	title_earned text NULL,
	coins_earned int4 DEFAULT 0 NOT NULL,
	vkd_earned int4 DEFAULT 0 NOT NULL,
	kbd_earned int4 DEFAULT 0 NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	CONSTRAINT pk_khoa_cu_exam_results PRIMARY KEY (id),
	CONSTRAINT uq_kc_result_user_exam UNIQUE (user_id, exam_schedule_id),
	CONSTRAINT fk_khoa_cu_exam_results_exam_schedule_id_khoa_cu_exam_schedules FOREIGN KEY (exam_schedule_id) REFERENCES public.khoa_cu_exam_schedules(id) ON DELETE CASCADE,
	CONSTRAINT fk_khoa_cu_exam_results_session_id_khoa_cu_exam_sessions FOREIGN KEY (session_id) REFERENCES public.khoa_cu_exam_sessions(id) ON DELETE SET NULL,
	CONSTRAINT fk_khoa_cu_exam_results_user_id_users FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE
);
CREATE INDEX ix_kc_result_schedule ON public.khoa_cu_exam_results USING btree (exam_schedule_id);
CREATE INDEX ix_kc_result_user ON public.khoa_cu_exam_results USING btree (user_id);


-- public.khoa_cu_exam_schedule_questions definition

-- Drop table

-- DROP TABLE public.khoa_cu_exam_schedule_questions;

CREATE TABLE public.khoa_cu_exam_schedule_questions (
	id serial4 NOT NULL,
	exam_schedule_id int4 NOT NULL,
	question_id int4 NOT NULL,
	order_index int4 NOT NULL,
	listening_collection_id int4 NULL,
	play_from int4 NULL,
	play_to int4 NULL,
	CONSTRAINT khoa_cu_exam_schedule_questions_pkey PRIMARY KEY (id),
	CONSTRAINT uq_kc_schedule_order UNIQUE (exam_schedule_id, order_index),
	CONSTRAINT uq_kc_schedule_question UNIQUE (exam_schedule_id, question_id),
	CONSTRAINT khoa_cu_exam_schedule_questions_exam_schedule_id_fkey FOREIGN KEY (exam_schedule_id) REFERENCES public.khoa_cu_exam_schedules(id) ON DELETE CASCADE,
	CONSTRAINT khoa_cu_exam_schedule_questions_question_id_fkey FOREIGN KEY (question_id) REFERENCES public.questions(id) ON DELETE CASCADE
);
CREATE INDEX ix_kc_sq_schedule ON public.khoa_cu_exam_schedule_questions USING btree (exam_schedule_id);
CREATE INDEX ix_kc_sq_schedule_order ON public.khoa_cu_exam_schedule_questions USING btree (exam_schedule_id, order_index);


-- public.lesson_attendance definition

-- Drop table

-- DROP TABLE public.lesson_attendance;

CREATE TABLE public.lesson_attendance (
	attendance_id serial4 NOT NULL,
	session_id int4 NOT NULL,
	student_id text NOT NULL,
	attendance_status varchar(20) DEFAULT 'absent'::character varying NOT NULL,
	check_in_time timestamptz NULL,
	check_out_time timestamptz NULL,
	absence_reason text NULL,
	teacher_notes text NULL,
	student_notes text NULL,
	participation_score int4 NULL,
	tenant_id int4 NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamptz NULL,
	updated_by text NULL,
	CONSTRAINT pk_lesson_attendance PRIMARY KEY (attendance_id),
	CONSTRAINT uq_session_student_attendance UNIQUE (session_id, student_id),
	CONSTRAINT fk_lesson_attendance_session_id_lesson_sessions FOREIGN KEY (session_id) REFERENCES public.lesson_sessions(session_id) ON DELETE CASCADE
);
CREATE INDEX ix_lesson_attendance_attendance_id ON public.lesson_attendance USING btree (attendance_id);
CREATE INDEX ix_lesson_attendance_attendance_status ON public.lesson_attendance USING btree (attendance_status);
CREATE INDEX ix_lesson_attendance_is_deleted ON public.lesson_attendance USING btree (is_deleted);
CREATE INDEX ix_lesson_attendance_session_id ON public.lesson_attendance USING btree (session_id);
CREATE INDEX ix_lesson_attendance_student_id ON public.lesson_attendance USING btree (student_id);


-- public.role_permissions definition

-- Drop table

-- DROP TABLE public.role_permissions;

CREATE TABLE public.role_permissions (
	id serial4 NOT NULL,
	role_id text NOT NULL,
	permission_id text NOT NULL,
	tenant_id text NULL,
	is_deleted bool NOT NULL,
	is_active bool NOT NULL,
	created_at timestamp NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	CONSTRAINT pk_role_permissions PRIMARY KEY (id),
	CONSTRAINT fk_role_permissions_permission_id_permissions FOREIGN KEY (permission_id) REFERENCES public.permissions(id),
	CONSTRAINT fk_role_permissions_role_id_roles FOREIGN KEY (role_id) REFERENCES public.roles(id)
);


-- public.student_answer_history definition

-- Drop table

-- DROP TABLE public.student_answer_history;

CREATE TABLE public.student_answer_history (
	id serial4 NOT NULL,
	attempt_id int4 NOT NULL,
	flashcard_id int4 NOT NULL,
	question_type varchar(50) NOT NULL,
	question_text text NOT NULL,
	correct_answer text NOT NULL,
	user_answer text NULL,
	is_correct bool NOT NULL,
	answer_time_seconds int4 NULL,
	question_order int4 NOT NULL,
	tenant_id int4 NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamptz NULL,
	updated_by text NULL,
	CONSTRAINT pk_student_answer_history PRIMARY KEY (id),
	CONSTRAINT fk_student_answer_history_attempt_id_student_assignment_2d4a FOREIGN KEY (attempt_id) REFERENCES public.student_assignment_attempts(id) ON DELETE CASCADE
);
CREATE INDEX ix_student_answer_history_attempt_id ON public.student_answer_history USING btree (attempt_id);
CREATE INDEX ix_student_answer_history_flashcard_id ON public.student_answer_history USING btree (flashcard_id);
CREATE INDEX ix_student_answer_history_id ON public.student_answer_history USING btree (id);
CREATE INDEX ix_student_answer_history_is_deleted ON public.student_answer_history USING btree (is_deleted);
CREATE INDEX ix_student_answer_history_question_type ON public.student_answer_history USING btree (question_type);


-- public.study_course_modules definition

-- Drop table

-- DROP TABLE public.study_course_modules;

CREATE TABLE public.study_course_modules (
	id serial4 NOT NULL,
	course_id int4 NOT NULL,
	module_id int4 NOT NULL,
	"position" int4 NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	created_by text NULL,
	CONSTRAINT pk_study_course_modules PRIMARY KEY (id),
	CONSTRAINT fk_study_course_modules_course_id_study_courses FOREIGN KEY (course_id) REFERENCES public.study_courses(id) ON DELETE CASCADE,
	CONSTRAINT fk_study_course_modules_module_id_study_modules FOREIGN KEY (module_id) REFERENCES public.study_modules(id) ON DELETE CASCADE
);
CREATE INDEX ix_study_course_modules_course_id ON public.study_course_modules USING btree (course_id);
CREATE INDEX ix_study_course_modules_id ON public.study_course_modules USING btree (id);
CREATE INDEX ix_study_course_modules_module_id ON public.study_course_modules USING btree (module_id);
CREATE UNIQUE INDEX uq_study_course_modules ON public.study_course_modules USING btree (course_id, module_id);


-- public.study_course_progress definition

-- Drop table

-- DROP TABLE public.study_course_progress;

CREATE TABLE public.study_course_progress (
	id serial4 NOT NULL,
	user_id text NOT NULL,
	course_id int4 NOT NULL,
	completed_modules int4 DEFAULT 0 NOT NULL,
	total_modules int4 DEFAULT 0 NOT NULL,
	completed_sets int4 DEFAULT 0 NOT NULL,
	total_sets int4 DEFAULT 0 NOT NULL,
	average_score int4 NULL,
	is_completed bool DEFAULT false NOT NULL,
	completed_at timestamp NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	CONSTRAINT pk_study_course_progress PRIMARY KEY (id),
	CONSTRAINT fk_study_course_progress_course_id_study_courses FOREIGN KEY (course_id) REFERENCES public.study_courses(id) ON DELETE CASCADE,
	CONSTRAINT fk_study_course_progress_user_id_users FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE
);
CREATE INDEX ix_study_course_progress_course ON public.study_course_progress USING btree (course_id);
CREATE INDEX ix_study_course_progress_course_id ON public.study_course_progress USING btree (course_id);
CREATE INDEX ix_study_course_progress_id ON public.study_course_progress USING btree (id);
CREATE INDEX ix_study_course_progress_is_completed ON public.study_course_progress USING btree (is_completed);
CREATE INDEX ix_study_course_progress_user ON public.study_course_progress USING btree (user_id);
CREATE INDEX ix_study_course_progress_user_id ON public.study_course_progress USING btree (user_id);
CREATE UNIQUE INDEX uq_study_course_progress ON public.study_course_progress USING btree (user_id, course_id);