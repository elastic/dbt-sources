
with source as (

    select * from {{ source('raw_netsuite_sa', 'search_clean_up_rule_beta_excluded_searches_map') }}

),

renamed as (

    select
        customization_id,
        search_clean_up_rule_beta_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
