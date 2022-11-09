
with source as (

    select * from {{ source('raw_marketo', 'lead_join_merges') }}

),

renamed as (

    select
        into_lead,
        merged_lead,
        _fivetran_synced,
        merge_date

    from source

)

select * from renamed
