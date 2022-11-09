
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'person') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        account,
        address_city,
        address_country,
        address_kana_city,
        address_kana_country,
        address_kana_line_1,
        address_kana_line_2,
        address_kana_postal_code,
        address_kana_state,
        address_kana_town,
        address_kanji_city,
        address_kanji_country,
        address_kanji_line_1,
        address_kanji_line_2,
        address_kanji_postal_code,
        address_kanji_state,
        address_kanji_town,
        address_line_1,
        address_line_2,
        address_postal_code,
        address_state,
        created,
        dob_day,
        dob_month,
        dob_year,
        email,
        first_name,
        first_name_kana,
        first_name_kanji,
        gender,
        id_number_provided,
        is_deleted,
        last_name,
        last_name_kana,
        last_name_kanji,
        maiden_name,
        phone,
        relationship_director,
        relationship_executive,
        relationship_owner,
        relationship_percent_ownership,
        relationship_representative,
        relationship_title,
        ssn_last_4_provided,
        verification_additional_document_back,
        verification_additional_document_details,
        verification_additional_document_details_code,
        verification_additional_document_front,
        verification_details,
        verification_details_code,
        verification_document_back,
        verification_document_details,
        verification_document_details_code,
        verification_document_front,
        verification_status

    from source

)

select * from renamed
